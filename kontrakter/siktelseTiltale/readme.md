# Siktelse og tiltalepunkt - ikke i produksjon
Versjon 1.0 er første versjon som vi skal i produksjon med sammen med tilståelsessaker.

## Headere forsendelse justisHub
SchemaName=SIKTELSE_TILTALE  
SchemaVersion=1.0
senderOrganization=POLITIET  
[RFC](../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)


## Status
Klart til tilståelsessaker og bestilling av varetektsplass.

## beskrivelse
En siktelse/tiltale en liste over basissaker som skal avgjøres.
En basissak er et straffbart forhold (tid og sted), et lovbud og en siktet/tiltalt person.
Ref. Harmoniseringsrapporten.
Det er en ren siktelse der fornærmede ikke er en del av de strukturerte data.

## Utestående punkter
### Fornærmede
Siktelser som tas ut kan være i tidlig fase og straffesakene kan inneholde flere fornærmede som ikke nødvendigvis er med i siktelsen, ref. problem
med personundersøkelse i Sør-Vest politidistrikt.
Avklaring med påtalejurister, flere runder.
### Kontakt
Hvis det er noe trøbbel spørsmål med en begjæring om tilståelsessak, hvem skal domstolen kontakte hos politiet?
Legger ved informasjon om avsender inkludert epost adresse og telefon hvis det finnes.
 spesifikke kontaktdetaljer fordi det er begjæringen om tilståelse som skal fange alle, men hvis vi ettersender hva da (meddomssaker)

## felter

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

### personStraffesakId
Nøkkel for personer som er siktet (tiltalt, domfelt) som ikke skal endre seg mellom oversendelser til domstolene/kriminalomsorgen.
Denne er ikke utviklet i BL ennå så derfor er den optional.
* Det vil være tilfeller der samme person vil får nye nøkler. Det er avhengig av hvordan det blir registrert og ryddet i BL.
