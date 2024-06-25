# Trafikkuhell melding (ikke i produksjon)
Denne meldingen brukes av politiet til å varsle om et vegtrafikkuhell til Statens Vegvesen
## Headere forsendelse justisHub
SchemaName=TRAFIKKUHELL  
SchemaVersion=1.0  
[RFC](../../../rfc/MessageName-header.md)
### [Se changelog for endringer](./changelog.md)

## Status
v. 1.0 opprettes

Oversikt over kodeverksdata lagt til

Informasjon om trafikkuhell registreres hos politet i dag i to omganger (skadegrad oppdateres på et senere tidspunkt), det må tas stilling til
om det skal sendes to forskjellige meldinger, eller om det skal være mulig å oppdatere en eksisterende
melding med ny/endret informasjon (det kan også være behov for å oppdatere informasjon om en ulykke sånn generelt.)

I første omgang er det skissert en melding med all nødvendig informasjon.