# Endringslogg begjæring om varetek
## Versjon 1.0
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
2. ansattperson justeringer for å synke med domstolene sin kjennelse.
3. telefon -> telefonnummer endring.
4. Bedre beskrivelser på siktelseTiltale. Rettet feil med nummer to steder, skal være bare under "punkt".
5. Description på fødselsnummer, ssp nummer, d nummer.
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
