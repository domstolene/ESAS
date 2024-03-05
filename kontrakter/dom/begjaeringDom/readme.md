# Bestilling av varetektsplass (ikke i produksjon)
Versjon 1.0 er første versjon som vi skal i produksjon med.
* [JSON Schema](arbeidsversjon/bestillingAvVaretektsplass.schema.json)
* [Eksempler](arbeidsversjon/eksempelfiler/)

## Headere forsendelse justisHub
SchemaName=BEGJAERING_DOM  
SchemaVersion=1.0
[RFC](../../../rfc/MessageName-header.md)

[Se changelog for endringer](changelog.md)

## Status
Jobber med første utkast.

## Flyt
```mermaid
sequenceDiagram
  participant  sa as Statsadvokat
  Participant pd as politi/påtale
  Participant tr as Tingrett
  Participant kdi as Kriminalomsorgen
  Note over pd: Berammelse <br/>Sammen med tingretten
  activate pd
  Note over sa: Kan også be om dom <br/>aldri ? 
  pd->>tr: begjaeringDom
  Note left of pd: Begjæring, siktelse og påstand<br/>sendes fortløpende
  pd->>tr:siktelse (punkter)
  pd->>tr:påstand straff
  deactivate pd
  pd->>tr: sammenstilling<br/>politidokumenter
  tr-->>pd: oppnevnelse (generellMelding)
  pd-->>tr: aktor (generellMelding)
  tr->>pd:dom
  Note over pd: Dom blir rettskraftig
  pd->>kdi:Fullbyrdelsesordre
  Note over kdi:Innkalling til soning
  kdi->>pd:Straffegjennomføring (inn,ut,permisjon,...)
```