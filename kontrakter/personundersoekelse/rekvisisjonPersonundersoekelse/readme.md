# Rekvirering av personundersøkelse

Versjon 1.0 er første versjon som vi skal i produksjon med.

- [JSON Schema](1.0/rekvirerePersonundersoekelse.schema.json)
- [Eksempler](1.0/eksempelfiler/)

[Se changelog for endringer](changelog.md)

## Headere forsendelse justisHub
SchmaName=REKVISISJON_PERSONUNDERSOEKELSE  
SchemaVersion=1.0  
[RFC message name header](../../../rfc/MessageName-header.md)

## Avklaringer

### Utestående avklaringer

Kontaktpersonen må oppgis for videre dialog.
Er påtalejurist alltid kontaktpersonen i politiet for disse sakene, eller kan det være etterforskere m.v.?
KO må uansett vite hvem som skal ha personundersøkelsen i retur. Vi må derfor enten ha et separat, nytt påkrevd felt for kontaktperson - eller gjøre jurist påbudt.

Straffeprosesslov-referanse, skylderkjennelse og siktet/vergeorientering samt samtykke er ikke satt som nødvendige så langt. De er imidleritd en del av ny PUM-mal, og det kan være vi skal ta en dobbeltsjekk på disse. Enn så lenge oppleves at skylderkjennelse kan trekkes tilbake eller være misforstått, samt at KO har praksis på å innhente samtykke i mange tilfeller alt (men mulig noen effektivisering er mulig med Politiets nye samtykkeløsning om dette er egnet?)

Er det nødvendig med Varetekt-markering for "hastesak" (ref. PUM mal) ? Eller holder det med ønsket fristdato? Friomsorgskontoret vet ikke nødvendigvis om en person er i varetekt eller ei.

KO venter personundersøker kan måtte møte i hovedforhandling - vi tror ikke det er nødvendig å ha dette som et strukturert felt, men la oss dobbeltsjekke.

### Avklarte avklaringer

Den siktede må identifiseres sikkert (fnr/D-nr) og ha bosted eller oppholdsadresse angitt.
Kriminalomsorgen bruker oppholdsadresse og bostedsadresse til å rute rekvireringen til rett ansvarlig friomsorgskontor.
Sikker identitet er nødvendig for å hente korrekte og sensitive personopplysninger fra kildene.

Evt. verger bør identifiseres med fødselsnummer for informasjonssikkerheten. Dette gir en robusthet i tilfelle adressebytter, flere personer med like/liknende navn, etc.

KO forventer straffeattest og siktelsealltid legges ved (PDF).
Rettsbok fra tingrett (dom fra lavere intans) legges ved (PDF) for en evt. PeU i en sak som går for 2.instans.

Merk at man kan rekvirere en PUM selv om siktede ikke er mindreårig per i dag. Det er alderen på gjerningstidspunktet som avgjør.

## Behov som vi har avklart kan vente

Formålet med undersøkelse, vurdering av hensiktsmessighet av fengsling etc. kan være utstrukturert i PDF i denne omgang.

KOG-delen kan også tas som fritekst - konfliktrådet ville potensielt ha nytte av en strukturering av dette, men de får ikke denne meldingen direkte i denne omgang. Potensielt forbedring i senere versjon.

## Ønsker / mangler

Synk av adressemodell og adressetyper mot folkeregisterets modell her - og generelt?

Tolkespråk er ønsket, men ikke et absolutt krav. Modellen støtter p.t. støtte "statsborgerskap" som dekker deler av behovet. Men klarer vi noe mer her, er det ønskelig, siden det åpenbart er distinksjoner her.

Enkelte enheter kan ønske "gjenbruke" samme tolk som påtale har benyttet, mens andre enheter har egne avtaler med andre tilbydere av tolketjenester. Det ansees derfor ikke som kritisk å oppgi kontaktinfo på tolk.
