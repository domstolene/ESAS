# Begjæring om dom (tilståelse) - ikke i produksjon

## Headere forsendelse justisHub
SchemaName=BEGJAERING_DOM  
SchemaVersion=1.1  
senderOrganization=POLITIET

[RFC](../../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)

Mulig Kriminalomsorgen etter hvert vil bruke en variant av denne, men til pilot er det politiet.

## Status
Første versjonen dekker nå kun tilståelsessaker med en siktet person (ikke foretak). Når vi begynner å jobbe med meddomssaker så utvider vi meldingen igjen.

## Beskrivelse
Begjæaring om dom skal brukes i alle prosesser der påtale får en dom tilbake fra tingretten.
Dommen skal avgjøre skyld og måle ut straff. Se [dom flyt](../readme.md).

Dette gjelder flere typer saker hos tingretten og vi begynner med å støtte tilståelsessaker.
Dvs. meldingen som nå er definert støtte flere typer begjæringer.
### Begjæringstyper 

|Type| Beskrivelse                                                                                                    | Aktiv første fase |
|--|----------------------------------------------------------------------------------------------------------------|-------------------|
| TILSTAAELSE | Tilståelsessaker 1 siktet person                                                                               | ja                |
|TILSTAAELSE_FORERETT| Forlengelse av midlertidig tap av førerett eller tilståelsessak. Kombinasjonssak                               | nei               |
|TILSTAAELSE_VARETEKT| Tilståelsessak eller begjæring om varetekt (som regel forlengelser), brukes av Oslo, Øst m.fl. Kombinasjonssak | nei               |
|MEDDOMSSAK| Meddomssak / hovedforhandling hos tingretten                                                                   | nei|

Kombinasjonstypene er for å effektivisere saksbehandlingene der politiet prøver å få til en tilståelsessak, men hvis den faller ut når siktede trekker tilståelsen så kjøres det en varetekt eller kjennelse på fortsatt førerkortbeslag.
## Sjekk/avklaringer
1. Ansvarlig påtalejurist på saken, den som kjører rutinen / gjør dokumentet gyldig i dag.
2. Kontaktdetaljer øverst i påtegning i dag brukes de (hvorfor ikke epost)? Sjekke hvilke data vi fletter inn.
3. Tidligere straffet er det viktig informasjon for domstolene  

