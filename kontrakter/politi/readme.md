# Meldinger definert og eiet av politiet
Alle JSON Schema med eksempler som politiet lager og vedlikeholder ligger på denne katalogen.

## [Bestilling av varetektsplass](bestillvaretektsplass/readme.md)
Politiet bestiller varetektsplass.

## Rydder i denne

## Versjon 1.0 som vi til slutt skal gå i produksjon med i ESAS II
Det er ikke laget eksempel på melding når kjennelsen kommer fra domstolene og den blir sendt videre til Kriminalomsorgen.
Detaljert lovreferanse (lovreferanseElement) er ikke en del av eksempelet og trenger justering. Type kan kanskje være en enum (utvidbar?) med PARAGRAF, LEDD....
Vi kommer til å implementere til slutt 

### innsettelsesordre.schema.json
Innsettelsesordre med mulighet for å legge ved politijuristen sin beslutning aller domstolene sin kjennelse.
Eksempler:
* innsettelsesordre-paatale.json, innsettelsesordre før det er kommet noen kjennelse.
* innsettelsesordre-kjennelse.json, innsettelsesordre sammen med kjennelse fra domstolen.

### oppdaterVaretekt.schema.json
Brukes når kjennelses på varetekt kommer fra domstolen og når påtalejuristen ønsker å endre på restriksjoner.
Eksempler:
* oppdaterVaretekt-paatale.json, oppdatering av restriksjoner og isolasjonskrav av påtale. Kan kommer før eller etter første kjennelse.
* oppdaterVaretekt-kjennelse.json, kjennelsen fra domstolene videresendt.

##### Historie

###### Fjernet oneOf og bruker felt som ikke er påbudt 28.09.2022
Rydder samtidig i noen typer som da blir obsolete.

###### Flere eksempler og justeringer 20.09.22
Bruker definitions alle steder, rydder i ting som er inkonsistent.
Fjernet toppnivå schema som vi ikke bruker og fjernet navn .combined. på schema.

###### Samlet Json Schema for Kriminalomsorgen
Ny schema som ikke refererer til felles skjema for Kriminalomsorgen. 
* innsettelsesordre.combined.schema.json - er samme som innsettelsesordre.json
* oppdaterVaretekt.combined.schema.json - er samme som oppdaterVaretekt.schema.json
Sammenslåingen av schema er gjort manuelt i første omgang, skal lage en utility som fikser det automatisk slik at vi slipper å vedlikeholde 2 versjoner av schema.

Versjon 1.0 er synket med felles schema for [begjæring om varetekt](../../varetekt/readme.md) samt at alle detaljer er med.
[Versjon 0.9](../../innsettelsesordre/0.9/readme.md)