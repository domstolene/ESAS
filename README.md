# ESAS

Samling av kontrakter for meldinger som skal utveksles i ESAS-prosjektet.

## Validering av JSON-schema

Validering av JSON-schema skjer ved pull-requester og push på main-branch, med `npm run json:validate`.

For å legge til validering av nye schema, utvides variabelen `jsonSchemaFolders` i `validateJsonSchema.js`.
Scriptet forventer at det refereres til mapper som først inneholder versjoner, 
 som igjen inneholder json-schema og en mappe med json-eksempelfiler. Eksempelvis: 

```
└── kontrakt
    ├── 1.0
    │   ├── foo.schema.json
    │   └── eksempelfiler
    │       ├── foo-eksempel-1.json
    │       └── foo-eksempel-2.json
    └── 1.1
        ├── foo.schema.json
        └── eksempelfiler
            ├── foo-eksempel-1.json
            └── foo-eksempel-2.json
```
