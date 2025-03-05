## Tittel

**To be Reviewed By**: KDI, DA og PIT

**Authors**: Martin Myran

**Status**: Diskusjon

### Problemstilling
Ønsker standard header i Json Schema for å lettere kjenne seg igjen.

### Løsningsforslag
#### Dokumentasjon i GitHub
Flytter dokumentasjon til Git på alle JSON Schema retningslinjer (samler alle RFC som gjelder).
#### $schema
`"$schema": "https://json-schema.org/draft/2020-12/schema"`
#### $id
Vi bruker $id til å unikt identifisere schema og for å kunne finne det igjen på GitHub.<br/>
`"$id": "https://politiet.no/dom/1.0/begjaeringDom"`

* politiet.no - Det er politiet som mottar meldinger med gitt schema, og dermed har eierskap til hvilken informasjon den må inneholde for å behandle forespørselen meldingen representerer. For felles-meldinger som mottas av mer enn en virksomhet, så benyttes domenet *justishub.no*.
* Json Schema ligger på folder kontrakter/dom/begjaeringDom/1.0

### Changelog
15.08.2024 Første forslag lik [eksisterende retnings på Confluence](https://domstol.atlassian.net/wiki/x/PQG08Q).  
10.09.2024 Presiserer prinsippet at mottaker-virksomheten av skjemaet typisk blir domenet i $id, [slik tidligere etablert av faggruppe for arkitektur](https://domstol.atlassian.net/wiki/x/-YAb-Q).
