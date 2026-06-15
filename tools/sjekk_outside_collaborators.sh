#!/usr/bin/env bash

set -euo pipefail

repo_root=$(git rev-parse --show-toplevel)
contribute_path="${1:-CONTRIBUTE.md}"
output_file="${2:-esas-collaborator-audit.json}"
patch_file="${3:-contribute-sync.patch}"

if [[ "$contribute_path" = /* ]]; then
    contribute_file="$contribute_path"
else
    contribute_file="$repo_root/$contribute_path"
fi

for cmd in gh jq awk sort comm diff; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "Mangler avhengighet: $cmd" >&2
        exit 1
    fi
done

tmp_dir=$(mktemp -d)
cleanup() {
    rm -rf "$tmp_dir"
}
trap cleanup EXIT

outside_users_txt="$tmp_dir/outside-users.txt"
contribute_users_txt="$tmp_dir/contribute-users.txt"
missing_in_contribute_txt="$tmp_dir/missing-in-contribute.txt"
only_in_contribute_txt="$tmp_dir/only-in-contribute.txt"
contribute_raw="$tmp_dir/contribute-raw.md"
contribute_proposed="$tmp_dir/contribute-proposed.md"
contribute_filtered="$tmp_dir/contribute-filtered.md"
missing_rows="$tmp_dir/missing-rows.md"

outside_users_json="$tmp_dir/outside-users.json"
contribute_users_json="$tmp_dir/contribute-users.json"
missing_in_contribute_json="$tmp_dir/missing-in-contribute.json"
only_in_contribute_json="$tmp_dir/only-in-contribute.json"

echo "Henter Outside Collaborators for gjeldende repo..."
gh api "repos/{owner}/{repo}/collaborators?affiliation=outside&per_page=100" --paginate --jq '.[].login' \
    | tr '[:upper:]' '[:lower:]' \
    | sort -u > "$outside_users_txt"

if [ ! -f "$contribute_file" ]; then
    echo "Fant ikke CONTRIBUTE-fil: $contribute_file" >&2
    exit 1
fi

echo "Leser lokal CONTRIBUTE-fil: $contribute_file"
cp "$contribute_file" "$contribute_raw"

echo "Parser brukernavn fra $contribute_path..."
{
    grep -oE '@[A-Za-z0-9][A-Za-z0-9-]{0,38}' "$contribute_raw" | sed 's/^@//'
    grep -oE 'https?://github\.com/[A-Za-z0-9][A-Za-z0-9-]{0,38}(/)?' "$contribute_raw" \
        | sed -E 's#https?://github\.com/##; s#/$##'
} 2>/dev/null \
    | tr '[:upper:]' '[:lower:]' \
    | sort -u > "$contribute_users_txt" || true

# Sørg for at filer eksisterer selv hvis ingen treff
touch "$outside_users_txt" "$contribute_users_txt"

comm -23 "$outside_users_txt" "$contribute_users_txt" > "$missing_in_contribute_txt"
comm -13 "$outside_users_txt" "$contribute_users_txt" > "$only_in_contribute_txt"

jq -R -s 'split("\n") | map(select(length > 0))' "$outside_users_txt" > "$outside_users_json"
jq -R -s 'split("\n") | map(select(length > 0))' "$contribute_users_txt" > "$contribute_users_json"
jq -R -s 'split("\n") | map(select(length > 0))' "$missing_in_contribute_txt" > "$missing_in_contribute_json"
jq -R -s 'split("\n") | map(select(length > 0))' "$only_in_contribute_txt" > "$only_in_contribute_json"

jq -n \
    --arg generated_at "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" \
    --arg contribute_path "$contribute_path" \
    --slurpfile outside "$outside_users_json" \
    --slurpfile contribute "$contribute_users_json" \
    --slurpfile missing "$missing_in_contribute_json" \
    --slurpfile only "$only_in_contribute_json" \
    '
    ($outside[0]) as $outside_users
    | ($contribute[0]) as $contribute_users
    | ($contribute_users | INDEX(.)) as $in_contribute
    | {
        generated_at: $generated_at,
        contribute_path: $contribute_path,
        outside_collaborators_total: ($outside_users | length),
        contribute_usernames_total: ($contribute_users | length),
        outside_collaborators: (
            $outside_users
            | map({
                login: ., 
                represented_in_contribute: ($in_contribute[.] != null)
            })
        ),
        outside_missing_in_contribute: $missing[0],
        contribute_not_outside_collaborators: $only[0]
    }
    ' > "$output_file"

echo ""
echo "=== Outside Collaborators vs CONTRIBUTE.md ==="
printf "%-32s %-12s %s\n" "github_user" "i_contribute" "status"
printf "%-32s %-12s %s\n" "-----------" "-----------" "------"
while IFS= read -r user; do
    [ -z "$user" ] && continue
    if grep -Fxq "$user" "$contribute_users_txt"; then
        printf "%-32s %-12s %s\n" "$user" "✅" "OK"
    else
        printf "%-32s %-12s %s\n" "$user" "❌" "Mangler i CONTRIBUTE.md"
    fi
done < "$outside_users_txt"

echo ""
echo "Kandidater i CONTRIBUTE.md som ikke er Outside Collaborators:"
if [ -s "$only_in_contribute_txt" ]; then
    cat "$only_in_contribute_txt"
else
    echo "(ingen)"
fi

cp "$contribute_raw" "$contribute_filtered"
if [ -s "$only_in_contribute_txt" ]; then
    awk '
        NR == FNR {
            users[$1] = 1
            next
        }
        {
            line = tolower($0)
            remove = 0
            for (user in users) {
                if (line ~ ("(^|[^a-z0-9-])@" user "([^a-z0-9-]|$)") || line ~ ("github\\.com/" user "([^a-z0-9-]|$|/)")) {
                    remove = 1
                    break
                }
            }
            if (!remove) {
                print $0
            }
        }
    ' "$only_in_contribute_txt" "$contribute_raw" > "$contribute_filtered"
fi

cp "$contribute_filtered" "$contribute_proposed"
if [ -s "$missing_in_contribute_txt" ]; then
    : > "$missing_rows"
    while IFS= read -r user; do
        [ -z "$user" ] && continue
        printf "| %s | Ukjent | Write | @%s |\n" "$user" "$user" >> "$missing_rows"
    done < "$missing_in_contribute_txt"

    if [ -s "$missing_rows" ]; then
        awk '
            BEGIN {
                in_table = 0
                inserted = 0
            }
            {
                if (!inserted && $0 ~ /^\|/ && tolower($0) ~ /github-bruker/) {
                    in_table = 1
                }

                if (in_table && !inserted && $0 !~ /^\|/) {
                    while ((getline row < rows_file) > 0) {
                        print row
                    }
                    close(rows_file)
                    inserted = 1
                    in_table = 0
                }

                print $0
            }
            END {
                if (in_table && !inserted) {
                    while ((getline row < rows_file) > 0) {
                        print row
                    }
                    close(rows_file)
                }
            }
        ' rows_file="$missing_rows" "$contribute_filtered" > "$contribute_proposed"
    fi
fi

if diff -u "$contribute_raw" "$contribute_proposed" > "$patch_file"; then
    rm -f "$patch_file"
    echo ""
    echo "Ingen patch generert: ingen foreslåtte endringer i CONTRIBUTE.md."
else
    diff_exit=$?
    if [ "$diff_exit" -eq 1 ]; then
        echo ""
        echo "Patch-forslag lagret i $patch_file (dry-run, ikke anvendt)."
    else
        echo "Feil ved diff-generering" >&2
        exit "$diff_exit"
    fi
fi

echo ""
echo "JSON-rapport lagret i $output_file"
echo ""
echo "=== Sammendrag ==="
echo "Outside collaborators (faktisk tilgang): $(wc -l < "$outside_users_txt" | tr -d ' ')"
echo "Brukere funnet i CONTRIBUTE.md: $(wc -l < "$contribute_users_txt" | tr -d ' ')"
echo "Outside collaborators som mangler i CONTRIBUTE.md: $(wc -l < "$missing_in_contribute_txt" | tr -d ' ')"
echo "Brukere i CONTRIBUTE.md som ikke er outside collaborators: $(wc -l < "$only_in_contribute_txt" | tr -d ' ')"
