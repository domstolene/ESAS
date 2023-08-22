# Versjonering av melding

**To be Reviewed By**: Alle

**Authors**: Andreas Strand

**Status**: WIP

## Problemstilling

Ved utvikling av meldinger i dag muteres siste versjon av et gitt schema. Eksempelvis for en melding hvor vi har versjon 
`1.0` og `1.1`, hvor `1.0` er den aktive versjonen, så legges nye endringer på `1.1` inntil vi anser den som ferdig 
og oppretter en versjon `1.2`.

Dette medfører et par problemstillinger: 

- Vi har ingen enkel mulighet i git for å kunne se endringshistorikk for et schema, da denne er spredd 
  over flere versjonsfiler.
- Det er ingen enkel måte å se om den siste versjonen er endelig eller under arbeid.
- Politiet som har flere meldingstyper og henter ned schemaene gjennom maven, får situasjoner hvor flere meldinger må
  oppdateres hver gang versjonen av repositoriet oppdateres, selv om behovet i grunn kun er å endre versjonen av en 
  melding.

## Løsningsforslag

Vi innfører en mappe `arbeidsversjon` ved siden av versjon-mappene i repoet. Denne inneholder json-schema for en melding som
det aktivt jobbes med. Når man ønsker å "release" en ny versjon av meldingen, opprettes det en ny versjonsmappe,
og nåværende versjon i `arbeidsversjon`-mappen kopieres ut dit.

Dette gjør at versjonmappen representerer endelige versjoner som ikke skal muteres videre.

`arbeidsversjon`-mappen releases ikke med maven, slik at kun endelige versjoner releases.

## Eksempel

Gitt melding `innsettelsesordre` som allerede har en versjon `1.0`:

```
└── innsettelsesordre
    ├── changelog.md
    ├── 1.0
    │   ├── foo.schema.json
    │   └── eksempelfiler
    │       └── foo-eksempel.json
    └── arbeidsversjon
        ├── foo.schema.json
        └── eksempelfiler
            └── foo-oppdatert-eksempel.json
```

Så vil det kontinuerlig legges inn nye endringer i `innsettelsesordre/arbeidsversjon/foo.schema.json`, med endringshistorikk 
i `changelog.md`.

Når man ønsker å release en ny versjon av `innsettelsesorde`-schema, kopierer man ut nåværende versjon fra `arbeidsversjon`
inn i en ny versjonsmappe:

```
└── innsettelsesordre
    ├── changelog.md
    ├── 1.0
    │   ├── foo.schema.json
    │   └── eksempelfiler
    │       └── foo-eksempel.json
    ├── 1.1
    │   ├── foo.schema.json
    │   └── eksempelfiler
    │       └── foo-oppdatert-eksempel.json
    └── arbeidsversjon
        ├── foo.schema.json
        └── eksempelfiler
            └── foo-oppdatert-eksempel.json
```

## Changelog

09.08.2023: Opprettet RFC for versjonshåndtering av meldinger.
