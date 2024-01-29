# kjennelseVaretekt til Kriminalomsrogen
| Versjon | Beskrivelse                                  | Aktiv fra  | Aktiv til |
|---------|----------------------------------------------|------------|-----------|
| 1.1     | Håndter vitner uten identifikator |            |           |
| 1.0     | Første versjon til produksjon, pilot dato ?? | 09.10.2023 |           |

Denne meldingen sammen med [endreRestriksjoner](../endreRestriksjoner/readme.md) erstatter oppdaterVaretekt (slettet)
## Versjon 1.1
### Fødselsdato på vitner er optional

Fødselsdato for vitner er gjort optional. Dette er noe vi mangler for enkelte, ofte når vitner er politi.
## Versjon 1.0
Nyeste endringer øverst.
### Sendt tid fra domstolen 08.08.2023
Kriminalomsorgen trenger tidspunktet kjennelsen er sendt fra domstolene for å være sikker på hva somer siste kjennelse.
### Første versjon 26.07.2023
Endringsbeskrivelsen er i forhold til oppdaterVaretekt 
(slettet - nå [kjennelsevaretektPoliti](../kjennelsevaretektPoliti/readme.md)) 
versjon 1.0 som vi kjørte med i brukertest juni 2023.

1. siktelsesInfo er fjernet (kommer med siktelsesdata) som vi implementerer sammen med begjæring om tilståelsesdom til tingretten.
1. Det er lagt til straffesaker som i fremtiden skal inneholde lovbud.
1. Person og foretak som vi ble enige om i forbindelse med arbeidet med løslatelsesordren.
1. Mer kompakt format `"internId": { "type": "string" },`
1. Forlengelse
1. Persondata fra domstol og fra politi, se [readme](./readme.md)
1. Dommer og saksbehandler hos domstolen med som en del av kjennelsen
