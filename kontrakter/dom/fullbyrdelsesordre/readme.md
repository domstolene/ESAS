# Fullbyrdelsesordre - ikke i produksjon

Versjon 1.0 er første versjon som vi skal i produksjon med sammen med tilståelsessaker.

## Headere forsendelse justisHub

SchemaName=FULLBYRDELSESORDRE  
SchemaVersion=1.0  
[RFC](../../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)

## Beskrivelse

Oversendelse av fullbyrdelsesordre fra påtale til Kriminalomsorgen.
Selve ordren utstedes av jurist i BL før den oversendes med denne meldingen.
Eventuelle oppdateringer vil komme som en ny fullbyrdelsesordre.
Fullbyrdelsesordren fra jurist vil også komme som PDF vedlagt denne meldingen.

Foregrepet soning er ikke støttet i melding da vi ikke vil implementere den nå.

Hjemmelsrekken er ikke med i første pilot.
Foregrepet soning er det veldig få av i løpet av året så ikke prioriterti første del av pilot.

Basert på oprinnelig branch fra Jostein: [fullbyrdelsesordre-1](fullbyrdelsesordre-1)

## Status

Skriver om for å synkronisere med alle andre meldinger som begjæring dom, siktelse osv.
lovbudKombinertId skal bort, unødvendig.

## Avklaringer

Strukturerte reaksjoner.
Hvilke reaksjoner trenger Kriminalomsorgen strukturert, er det nødvendig å mappe alle?
Første versjon er uten detaljerte hjemeler.

**meddømte**, som potensielt ikke skal sone sammen, hvilke meddømte skal være med? Hva må brukerne hos politiet gjøre?
Meddømte i samme dom står i dommen og kan plukkes med.

**fornæermed**, trenger kanskje visning og valg av bruker, kan være fornærmede registrert på saken som ikke trengs/skal informeres til Kriminalomsorgen.
