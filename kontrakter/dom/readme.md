# Dom

## Overordnet beskrivelse
Rettsbehandlinger i retten som skal ende opp i dom fra retten. Det skal inkludere anke og dom fra høyere rettsinstanser, der anke meldinger blir liggende andre steder.
```mermaid
sequenceDiagram
  Participant pd as politi/påtale
  Participant tr as Tingrett
  Participant kdi as Kriminalomsorgen
  Note over pd: Berammelse <br/>Sammen med tingretten
  activate pd
  pd->>tr: begjaeringDom
  Note left of pd: Begjæring, siktelse og påstand<br/>sendes fortløpende
  pd->>tr:siktelse
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
Eksempel med tilståelsessak som ikke blir anket i første omgang.
Siktelse, tiltale og forelegg har alle samme format og innhold så vi lager en felles melding for siktelse/tiltalepunkter.
## Plan - 2024
Vi begynner med tilståelsessaker for å holde scope nede i første leveranse.
### Tilståelsessaker
Begjæring om dom og dom i tilståelsessaker.
Trafikksaker må vi støtte, mangler informasjon på disse sakene.
Trenger kanskje støtte for generelle meldinger slik at mest mulig av rettsbehandling vises i ny Elsa app.
#### Ikke med
* Anke over dom, kjøres på gammelmåten.
* Beramming, oppnevnelse av forsvarer og aktor. I det hele tatt allt annet enn start og slutt til tingretten.
* Anke til lagmannsretten på vedtatt forelett (ikke via tingretten)
### kombisaker - varetekt og tilståelse 
Kanskje ferdig før produksjonssetting,
### Tilståelsessaker uten anke
* De fleste tilståelsessaker blir ikke anket så vi tar ikke det med i første fase
