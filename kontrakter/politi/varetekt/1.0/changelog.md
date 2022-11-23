# Versjon 1.0 som vi til slutt skal gå i produksjon med i ESAS II

## Versjoner log
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
