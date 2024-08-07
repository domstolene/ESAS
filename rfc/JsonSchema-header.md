## Tittel

**To be Reviewed By**: KDI, DA og PIT

**Authors**: Martin Myran

**Status**: Diskusjon

### Problemstilling
Ønsker standard header i Json Schema for å lettere kjenne seg igjen.

Egentlig lik [eksisterende retnings på Confluence](https://domstol.atlassian.net/wiki/x/PQG08Q) tror jeg.

### Løsningsforslag
#### Dokumentasjon i GitLab
Flytter dokumentasjon til Git på alle JSON Schema retningslinjer (samler alle RFC som gjelder).
#### $schema
`"$schema": "https://json-schema.org/draft/2020-12/schema"`
#### $id
Vi bruker $id til å unikt identifisere schema og for å kunne finne det igjen på GitHub.<br/>
`"$id": "https://politiet.no/dom/1.0/begjaeringDom"`

* politiet.no - Det er politiet som lagde Json Schema.
* Json Schema ligger på folder kontrakter/dom/begjaeringDom/1.0

### Changelog
15.08.2024 Første forslag lik [eksisterende retnings på Confluence](https://domstol.atlassian.net/wiki/x/PQG08Q)
