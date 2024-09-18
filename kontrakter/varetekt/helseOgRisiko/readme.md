# Helse og risiko melding ikke i produksjon
Versjon 1.0 er første versjon som vi skal i produksjon med.
* [JSON Schema](1.0/helseOgRisiko.schema.json)
* [Eksempler](1.0/eksempelfiler/)

## Headere forsendelse justisHub
SchemaName=HELSE_OG_RISIKO  
SchemaVersion=1.0  
senderOrganization=POLITIET  
[RFC](../../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)

## Beskrivelse
Vil alltid bli sendt sammen med bestilling av varetektsplass.

## Meldingsdetaljer
### personStraffesakId
Nøkkel for personer som er siktet (tiltalt, domfelt) som ikke skal endre seg mellom oversendelser til domstolene/kriminalomsorgen.
Denne er ikke utviklet i BL ennå så derfor er den optional.
* Det vil være tilfeller der samme person vil får nye nøkler. Det er avhengig av hvordan det blir registrert og ryddet i BL.
