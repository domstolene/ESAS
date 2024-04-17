# Siktelse og tiltalepunkt - ikke i produksjon
Versjon 1.0 er første versjon som vi skal i produksjon med sammen med tilståelsessaker.

## Headere forsendelse justisHub
SchemaName=SIKTELSE_TILTALE  
SchemaVersion=1.0  
[RFC](../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)

## Status
2. runde med kommentarer fra domstolene, sender ut til ny PR.

## Utestående punkter
### Kodeverk
Bedre løsning på kodeverk, hvordan skal vi kunne dele politiets kodeverk.
### Kontakt
Hvis det er noe trøbbel spørsmål med en begjæring om tilståelsessak, hvem skal domstolen kontakte hos politiet?
Legger ved informasjon om avsender inkludert epost adresse og telefon hvis det finnes.
 spesifikke kontaktdetaljer fordi det er begjæringen om tilståelse som skal fange alle, men hvis vi ettersender hva da (meddomssaker)

## skjemadealjer
### internId
internId brukes på referanser innenfor en melding og lever ikke utenfor en melding, hvis samme siktelse/begjæring sendes på nytt så vil de kanskje ha nye id'er

## Siktelse / tiltale
Ref Harmoniseringsrapporten av 2006 så er en siktelse/tiltale en liste over basissaker som skal avgjøres.
En basissak er et straffbart forhold (tid og sted), et lovbud og en siktet/tiltalt person.

### basissak
Se [basissak](basissak.md). Domstolene skal avgjøre alle basissaker med skyld ikke skyld.
_Sjekk opp fordi i Harmoniseringsrapporten står det straffeskyld / ikke straffeskyld_
_Hva skjer med saker der personen ikke har skyldevne Straffeloven § 20, blir det fremedeles dømt skyldig / ikke skyldig ?_
### Kombinert lovbud
Når en forbrytelse har foregått over tid og vi har hatt en lovendring i den perioden så er det mulig å definere flere lovbud som gjelder for den straffbare handlingen.
<!-- Eksempel på en slik post --> 
Denne funksjonaliteten ble innført når ny straffelov ble aktivert i 2015. <!-- sjekk dato i BL kode -->

### inkluderte forhold
Enkelte lovbrudd kan slås sammen hvis de er pågått flere ganger over en periode slik at det blir bare ett grunnlag med en et annet lovbud.
_Finn eksempel, kanskje bruk av narkotika flere ganger til i perioden har NN blitt tatt 4 gangaer i bruke av Narkotika_
### straffbart forhold
Ett Straffbart forhold vil ha sitt utspring i en Hendelse (ev. en serie Hendelser av samme type) som  antas å være straffbar og skal etterforskes. I BL/STRASAK modeleres et straffbart forhold som en straffesak med hendelse, kobling til personer/foretak.
I BL så har et straffbart forhold et prinsipal lovbud med grunnlag og et subsidiært lovbud med grunnlag. Dvs. hvis en hendelse er opphave til flere lovbrudd så lages det flere straffesaker (straffbare forhold).
### Subsidiære lovbud
En straffesak kan ha et subsidiært lovbud og i BL sin implementasjon av siktelse så kan en post samle alle straffesaker som har samme prinsipale lovbud selv om de subsidiære lovbudene er forskjellig.
_Vi har ikke fått snakket med fagpersoner om det er vanlig å bruke._
