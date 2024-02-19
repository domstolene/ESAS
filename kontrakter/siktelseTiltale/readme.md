# Siktelse og tiltalepunkt - ikke i produksjon
Versjon 1.0 er første versjon som vi skal i produksjon med sammen med tilståelsessaker.

## Headere forsendelse justisHub
SchemaName=SIKTELSE_TILTALE  
SchemaVersion=1.0  
[RFC](../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)

## Siktelse / tiltale
Ref Harmoniseringsrapporten av 2006 så er en siktelse/tiltale en liste over basissaker som skal avgjøres.
En basissak er et straffbart forhold (tid og sted), et lovbud og en siktet/tiltalt person.
## Status
Jobber med første utkast som er basert på siktelsen vi leverte sammen med opprinnelig begjæring om varetekt.

## Dokumentasjon
### basissak
Se [basissak](basissak.md). Domstolene skal avgjøre alle basissaker med skyld ikke skyld.
_Sjekk opp fordi i Harmoniseringsrapporten står det straffeskyld / ikke straffeskyld_
_Hva skjer med saker der personen ikke har skyldevne Straffeloven § 20, blir det fremedeles dømt skyldig / ikke skyldig ?_
### Kombinert lovbud
Når en forbrytelse har foregått over tid og vi har hatt en lovendring i den perioden så er det mulig å definere flere lovbud som gjelder for den straffbare handlingen.
<!-- Eksempel på en slik post --> 
Denne funksjonaliteten ble innført når ny straffelov ble aktivert i 2015. <!-- sjekk dato i BL kode -->

### inkluderte saker
Enkelte lovbrudd kan kombineres hvis de er pågått flere ganger over en periode slik at det blir bare ett grunnlag med en et annet lovbud.
_Finn eksempel, kanskje bruk av narkotika flere ganger til i perioden har NN blitt tatt 4 gangaer i bruke av Narkotika_
