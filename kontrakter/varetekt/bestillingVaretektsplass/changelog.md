# Bestilling varetektsplass endringer
Omorganisert slik at det er en katalog for hver melding og eksempelfiler på samme sted (forrige PR).


| Versjon | Beskrivelse    | Aktiv fra | Aktiv til |
|---------|----------------|-----------|-----------|
| 1.1     | Arbeidsversjon |           |           |
| 1.0     | I produksjon   |           |           |

### 03.12.2024 Lagt til felt arrestlokasjon
Lagt til felt arrestlokasjon (hvor den siktede sitter i arresten).
Oppdatert til versjon 1.1.

### 02.10.2024 Legger til beskrivelse felt på meldingsnivå
Kan brukes til informasjon om hvor personen sitter inne.
### 15.07.2024 Split i bestilling, helse og siktelse
Vi ble enige om å skille ut helse/risiko og siktelseTiltale for å redusere kompleksiteten i hver enkelt melding og for å senere kunne oppdatere helse og risiko uavhengig.
[siktelseTiltale](../../siktelseTiltale/readme.md) er splittet i en egen melding i arbeidet med [begjæring om dom](../../dom/begjaeringDom/readme.md)
<br/>Vi jobber videre i versjon 1.0 ikke arbeidsversjon. Arbeidsversjon tar vi i bruk ved senere endringer.
1. KontaktpesonKDI, fjernet ref. møte 24.07.2024
2. VaretektSyklusId, faller bort da vi ikke får implementert den i ny løsning
3. Siktelsen kommer i egen melding.
4. Helse og risiko kommer i egen melding.
5. Vitner er ikke en del av strukturert informasjon, hvis det er informasjon som trengs så må bruker legge til i andre felt for kriminelt nettverk ... Siktede og medsiktede (hvis de er med i siktelsen) kommer med siktelsen.
6. Endringer på restriksjoner, uavklart og tekstfelt. Samt at restriksjonsType/isolasjonsType blir lik som til domstol (bortsett fra annet som ikke gjelder KO)
### 08.01.2024 rydder i PR
Se [readme.md](./readme.md) for endringer i PR som vi skal se på til neste versjon.

### 17.04.2023
melding og forsendelse justeringer i hennhold til [begjaering varetekt](../begjaeringVaretekt/1.4/begjaeringVaretekt.schema.json)

1. Flyttet "felles" typer nederst i schema. Person og enkle typer.
2. Fjernet ønsket rettssted fra forsendelse.
3. restriksjon / isolasjon fjernet fraDato og tilDato fordi det ikke er mulig å fylle inn det nå.
4. Nytt fritekstfelt på restriksjoner/isolasjon så noe omstrukturering.
5. Risiko og helseopplysninger nå med egne element for risiko, helse, tilstand.
6. Utvidet paagripelse med sted