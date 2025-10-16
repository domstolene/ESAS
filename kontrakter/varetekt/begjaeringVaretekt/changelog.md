# Endringslogg begjæring om varetek
| Versjon | Beskrivelse                                 | Aktiv mottaker | Aktiv sender | 
|---------|---------------------------------------------|----------------|--------------|
| 1.7     | varetektUtloeperdato + EK                   |                |              |
| 1.6     | Vilkårbeskrivelse                           |                |              |
| 1.5     | Arrestordreloven/surrogat/kontakt           |                |              |
| 1.4     | Kunne begjære varetektsfengsling frem i tid | 20.03.2024     | 25.03.2024   |
| 1.3     | Håndter vitner uten identifikator           |                | 09.11.2023   |
| 1.2     | Første versjon til produksjon, pilot        | 09.10.2023     | 21.09.2023   |
| 1.1     | Tolk og til hovedforhandling                |                | ikke prod    |
| 1.0     | Brukertest juni 2023, ikke til produksjon   |                | ikke prod    |

## Versjon 1.7
Legger til mulighet for å sende begjæring om varetekt med elektronisk kontroll.
Omdøper "fengslingUtloeperDato" til "varetektUtloeperDato". 

## fengslingUtloeperDato -> varetektUtloeperDato (1.7), venter med versjonering ref Carl Fredrik
fengslingUtloeperDato" kommer ikke fra påtale ved forlengelser. Og, burde renames til "varetektUtloeperDato"?
Fikser opp i endringslogg, venter med å versjonere til 1.7
## Arbeidsversjon skrivefeil  (1.5)
Små skrivefeil i vilkaarstype enum. 
## Arbeidsversjon kontakt (1.5)
Tilbakemeldinger så langt sier at det er feil å oppgi avsender og påtaleansvarlig sitt telefonnummer.
* Vi har ikke gode nok data på personer sin telefonnummer.
* Det er ofte andre personer som skal kontaktes (avdeling)
* Vi velger derfor å oppgi distriktet sitt sentralbord som standard på alle meldinger som trenger kontaktdetaljer.

Bruk av dato/datoTid synkronisering.
## Versjon arbeidsversjon (1.5) arrestordreloven og surrogat
ESAS-1396 og ESAS-476
Jobber i arbeidsversjon til endringene er godkjent.
Støtte for begjæring om fengslingssurrogater.
Forbereder til andre former for fengsling som for eksempel varetekt med elektronisk kontroll slik at det bare er å utvide
enumerert tvangsType
## Versjon 1.4 - i produksjon
### Begjæring om varetekt gyldig fra 
Dersom det begjæres om varetekt frem i tid er det lagt til et felt gyldigFraDato i paastandVaretekt som sier når begjæringen skal gjelde fra.
## Versjon 1.3
### Fødselsdato på vitner er optional
Fødselsdato for vitner er gjort optional. Dette er noe vi mangler for enkelte, ofte når vitner er politi. 
## Versjon 1.2
### Fengsling utløper dato ved forlengelse
Det er lagt til dato for når forrige/gjeldene fengsling utløper under forlengelseInfo ved begjæring om varetekt forlengelse
Andre del av endringer fra brukertest til pilot, planlagte endringer:
1. Forsvareroppnevning
2. Fengslingssurrogater (?)
3. ... 
## Versjon 1.1 - første del av oppdateringer etter brukertest

### Oppdatert begrense offentlighet

Kan velge flere krav under begrense offentlighet, samt lagt til HEMMELIGHOLD som alternativ

### Varetekt til hovedforhandlingsdato

Saksinformasjon inneholder hovedforhandlingsdato, og fengsling, restriksjoner og isolasjon inneholder en ny definisjon - varighet. 
Varighet defineres ved å enten spesifisere antall dager i varetekt eller til hovedforhandling.

## Versjon 1.0 - brukertest juni 2023

### Fjerner melding på begjæringVaretekt meldingen
23.05.2023
Navn på meldingen skal ligge i header informasjon på rabbitMQ så det er ikke nødvendig at den er en del av selve meldingen.

### Fjerne påloggingsinformasjon i meldinger (ESAS-424)
16.05.2023
Hvis det ikke er helt nødvendig som det kanskje er på Jurister.
La til en dato også i Changelog.
ansattPerson fjernet bid laget paataleJurist.

### Justeringer (ESAS-294)
1. Verger skal være ordentlige personer så verger er lagt til som en vanlig person type.
2. Lovbud trenger ikke lovbudId.
3. Flere ting som er ønsket som ikke er med er dokumentert i readme.md fil.

### Endringer i Begjæring varetekt etter MR på kjennelseVaretekt fra domstolene (ESAS-222)
Synker med kjennelseVaretekt etter PR branch feature/varetekt_kennellse_refaktorering
1. melding med store bokstaver og _ som enum.
2. organisasjon med restriksjoner på organisasjonsnummer....
3. ansattperson justeringer for å synke med domstolene sin kjennelse.
4. telefon -> telefonnummer endring.
5. Bedre beskrivelser på siktelseTiltale. Rettet feil med nummer to steder, skal være bare under "punkt".
6. Description på fødselsnummer, ssp nummer, d nummer.

### ESAS-157-begjaeringVaretekt-oppdater
Justering på Schema for å synke med kommentarer de siste ukene.
Retningslinjer oppdatert: https://domstol.atlassian.net/wiki/spaces/ESAS/pages/4055105853/Retningslinjer+for+modellering+av+meldinger 
1. oneOf med properties uten enum. Dvs. vi bruker ikke varianten med variabel property definition da de skaper problemer med kodegenerering.
   personForetak, personForetakEnkel, personIdentifikator
2. Vilkår som enumerert type
3. under18

### PR ESAS-157 ett schema for begjæring 2
Endringer etter pull request https://github.com/domstolene/ESAS/pull/16
1. Organisasjon skal ikke inneholde kontaktinformasjon.
   mottaker er en tingrett, men skal også inneholde informasjon om ønsket rettssted.
   Fjerner kontaktInfo.
2. Personer og fødselsnummer
   En siktet person har alltid fødselsnummer eller SSP nummer.
   Hvis en person har D nummer så får han også SSP nummer.
   Se egen diskusjon om identifikatorer på personer.
   https://domstol.atlassian.net/l/cp/MiGdKEZX
   array av identifikatorer på person
3. person, foretak full, enkel osv. 
   person, foretak er fullstendig informasjon
   personEnkel og foretakEnkel er mindre informasjon.
4. Ryddet og slettet noen elementdefinisjoner som ikke lenger er i bruk.
5. Strukturendringer for å enklere se viktige data.
   Bruker begrepet påstand for påtale sine ønsker om varetekt.
5. DokumentRef inn i siktelsen.

### PR ESAS-157 ett schema for begjæring 1
Slått sammen alle under skjema, laget til versjon informasjon osv.
Større endring
