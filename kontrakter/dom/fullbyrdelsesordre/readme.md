# Fullbyrdelsesordre - ikke i produksjon

Versjon 1.0 er første versjon som vi skal i produksjon med sammen med tilståelsessaker.

## Headere forsendelse justisHub

SchemaName=FULLBYRDELSESORDRE  
SchemaVersion=1.0  
[RFC](../../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)

## Beskrivelse

Basert på oprinnelig branch fra Jostein: [fullbyrdelsesordre-1](fullbyrdelsesordre-1)

Oversendelse av fullbyrdelsesordre fra påtale til Kriminalomsorgen når dommen er rettskraftig.
Selve ordren utstedes av jurist i BL før den oversendes med denne meldingen.
Fullbyrdelsesordren fra jurist vil også komme som PDF vedlagt denne meldingen.

Foregrepet soning er ikke støttet i melding da vi ikke vil implementere den nå.

Hjemmelsrekken er ikke med i første pilot.
Foregrepet soning er det veldig få av i løpet av året så ikke prioriterti første del av pilot.

## Status

Skriver om for å synkronisere med alle andre meldinger som begjæring dom, siktelse osv.
lovbudKombinertId skal bort, unødvendig (siktelseTiltale vil bli oppdatert)

## Avklaringer

### Ordre og oversendelse
BL har en rutine for selv ordren og en for oversendelsen til Kriminalomsorgen.
Er det alltid påtaleansvarlig som skriver ordren i BL og noen andre som sender over til Kriminalomsorgen?
Kanskje vi burde ha både ordren og oversendelsen i EL-SA, beste med komplett løsning i EL-SA
Sjekk i BL om begge rutinene blir brukt til vanlig (flere distrikter)?

### Strukturerte reaksjoner
Hvilke reaksjoner trenger Kriminalomsorgen strukturert, er det nødvendig å mappe alle?
Første versjon er uten detaljerte hjemeler.

### Meddømte
Som potensielt ikke skal sone sammen, hvilke meddømte skal være med? Hva må brukerne hos politiet gjøre?
Meddømte i samme dom står i dommen og kan plukkes med.

### Fornærmede
Trenger kanskje visning og valg av bruker, kan være fornærmede registrert på saken som ikke trengs/skal informeres til Kriminalomsorgen.
(burde vært ryddet i saken)
