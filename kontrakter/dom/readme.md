# Kontrakter for dommer
Her ligger kontrakter for begjæring av dom fra påtale og dom fra tingretten som implementeres i håndtering av tilståelsessaker i ESAS III

Kontrakter for fullbyrdelse og anke vil bli liggende på andre kataloger (antagelig)

## Tilståelsessaker
Heltrukne linjer er prioritert i 2024. Annen flyt skal bruke dagens flyt (epost, telefon, ...)

### Normal flyt - med retting
```mermaid
sequenceDiagram
  autonumber
  participant pd as politi
  participant tr as Tingrett
  participant kdi as Kriminalomsorgen
  Note over pd: Etterforskning <br/> uttak av siktelse<br/>beramming ?
  pd->>tr: begjaeringDom (tilståelse)
  activate pd
  pd->>tr:siktelseTiltale(siktelse)
  pd->>tr:paastandStraff
  deactivate pd
  note over pd: På tilståelsessaker kommer<br/>alle 3 meldingene nesten<br/>samtidig
  tr->>pd: dom
  pd-->>tr: feil (mulig generellMelding)
  tr->>pd: dom (rettet)
  note over pd: Dommen blir rettskraftig
  note over pd: Dom til SSP<br/>synlig på vandelsattest
  pd->>kdi: fullbyrdelsesordre
```
### Avvis behandling
Vi skal også støtte kjennelse (avvist) from domstolene hvis domstolene ikke vil behandling begjæringen.
```mermaid
sequenceDiagram
  autonumber
  participant pd as politi
  participant tr as Tingrett
  pd->>tr: begjaeringDom (tilståelse)
  activate pd
  pd->>tr:siktelseTiltale(siktelse)
  pd->>tr:paastandStraff
  deactivate pd
  note over tr: Siktede trekker tilståelse ?
  tr->>pd: kjennelse(avvist)
```

Prioritert rekkefølge på definisjon og implementasjon av meldinger fra politiet er:
siktelseTiltale, begjaeringDom, paastandStraff, fullbyrdelsesOrdre

Politiet må håndtere retting av dom, dvs. at dommen kommer på nytt fra domstolene.

## Elementer
### Straffesaksinformasjon 
Detaljer om tid og sted på straffesakene finnes i siktelsen og er ikke listet på nytt her.
### Person og foretak.
Oppdatert detaljert informasjon om siktede, fornærmede personer og foretak som også finnes i siktelsen er listet her.
Informasjon om vitner som ikke finnes i siktelsen ligger her. 

### Verger
ligger nå på siktede som i begjæring om varetekt.

## Meldinger
### [Begjæring om dom](./begjaeringDom/readme.md)