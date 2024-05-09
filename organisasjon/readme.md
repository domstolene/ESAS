# Organisasjoner
Det er politi, domstolene og Kriminalomsorgen som har tilgang til justisHub oprinnelig.
## Gamle meldinger på Stifinner format
Det er to typer meldinger som adresseres med jusenheter [Begjæringer til domstolene](../kontrakter-xsd/stifinner/tilLovisa.xsd) og [avgjørelser fra domstolene](../kontrakter-xsd/stifinner/fraLovisa.xsd)

### Domstoler
Bruker politiets gamle JUSENHET kodeverk som nå heter ORGENHET, se [stifinner/stifinner-domstol.json](stifinner/stifinner-domstol.json)
Litt usikker på Høyesterett sin jusenhet kode, må sjekke.

_ESASOrganisasjon WriteStifinnerDomstolerJson: (File fromPath: 'c:\dev\tmp\stifinner-domstol.json')_

### Påtale
Politi, særorgan, Spesialenheten, statsadvokatene og riksadvokaten.
se [stifinner/stifinner-paatale.json](stifinner/stifinner-paatale.json)

### Kriminalomsorgen
Dette er ORGENHET/JUSENHET kodeverket fra politiet. Kan godt bruke, men jeg har ikke fått sjekket om det er unikt med domstoler og påtale.
Kanskje vi skal bruke andre koder?
Hva med Kriminalomsorgen i frihet er det regioner mm, har ikke fått sjekket om det er kodeverk for de.

se [stifinner/stifinner-fengsel.json](stifinner/stifinner-fengsel.json)