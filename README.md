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

## Sending av meldinger

Meldinger sendes over RabbitMq på Justishub, til en gitt exchange med tilhørende routing-key. 
Exchange og routing-key per melding og mottaker er definert på [Confluence](https://domstol.atlassian.net/wiki/spaces/ESAS/pages/4139679766/Rabbit+MQ+oppsett+med+en+exchange+for+hver+organisasjon).

### Signering og validering av meldinger

Alle meldinger er signert til en JWS (JSON Web Signature). Hver virksomhet har sin egen private-key,
samt en public-key som er eksportert til en JWK (JSON Web Key) og lastet opp til repoet. 
Se [validering-jwks](validering-jwks/README.md) for eksempel på hvordan dette kan gjøres.

Headeren til en JWS skal inneholder felter:

- `kid` - ID'en til nøkkelen som har signert meldingen. Slik at mottaker kan finne hvilken JWK meldingen skal valideres mot.
Se https://www.rfc-editor.org/rfc/rfc7515#section-4.1.4
- `alg` - Hvilken algoritme som ble brukt til å signere meldingen. Se https://www.rfc-editor.org/rfc/rfc7515#section-4.1.1

Eksempelvis:

```json5
{
  "kid": "politiet-1", // Mapper til nøkkel i validering-jwks/jwks-test.json
  "alg": "RS256"
}
```

Virksomhet som mottar en melding har ansvar for å validere signaturen til meldingen.

### AMQP-headere

Det er definert et sett med attributter (amqp-headere) som skal legges ved en melding:

- AMQP-header `messageId` settes til meldingen sin ID. Dette er samme ID som ligger i meldingen.
- Custom header `SchemaName` mappes til navnet på meldingen. Navnet på meldingen skal være definert i README under gitt schema.
  - RFC: [MessageName-header.md](rfc/MessageName-header.md)
  - Eksempelvis: `BEGJAERING_VARETEKT` for [begjaeringVaretekt](kontrakter/varetekt/begjaeringVaretekt/readme.md#headere-forsendelse-justishub).
- Custom header `SchemaVersion` mappes til versjonen av gitt kontrakt som sendes.
  - RFC: [MessageName-header.md](rfc/MessageName-header.md)
  - Se også [RFC for rullerende oppgradering](rfc/RullendeOppgraderingsvindu.md)
  - Eksempelvis: `1.0` for første versjon av en kontrakt
- Custom header `senderOrganization` settes til virksomheten som sender meldingen.
  - RFC: [AvsenderVirksomhet-property.md](rfc/AvsenderVirksomhet-property.md)
  - Eksempelvis `KRIMINALOMSORGEN`, `POLITIET`, `DOMSTOLEN`

### Kvitteringer

Alle meldinger som sendes over Justishub skal alltid kvitteres på av mottaker.
Se [README for kvitteringer](kontrakter/felles/kvittering/README.md) for nærmere beskrivelse om de forskjellige kvitteringer.

Kvitteringer signeres også som JWS, slik som alle andre meldinger.
