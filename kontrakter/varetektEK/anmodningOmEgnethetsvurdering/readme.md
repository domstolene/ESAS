# Anmodning om egnethetsvurdering for varetekt EK

- [JSON Schema](arbeidsversjon/anmodningOmEgnethetsvurdering.schema.json)
- [Eksempler](arbeidsversjon/eksempelfiler/)

[Se changelog for endringer](changelog.md)

## Headere forsendelse justisHub
SchmaName=ANMODNING_EGNETHETSVURDERING  
SchemaVersion=0.1
[RFC message name header](../../../rfc/MessageName-header.md)

## Avklaringer
### Utestående avklaringer

Er det nødvendig med informasjon om hvorvidt gjennomføringsadresse for varetekt er en institusjon?

Er det behov for ytterligere kontaktinformasjon til forsvarer, politiadvokat og etterforsker?

Vil et skriftlig samtykke alltid være representert med et vedlagt dokument?

## Endringer ift. utkast i Slack
### Fjernet
Elementet er fjernet fra personen som skal få egnethetsvurdering, da det allerede ligger et element for samtykkeDetaljer

    ''"informertOmEgnethetsvurdering": true, //nullable - hvis nei - kan ikke gjennomføres bestilling??''

### Flyttet
Element for samtykkedetaljer flyttet opp fra person og personRelatert, slik at de definisjonen holder seg like på tvers av kontrakter.