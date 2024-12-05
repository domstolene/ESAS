# Bestilling av varetektsplass
Versjon 1.0 er første versjon som vi skal i produksjon med.
* [JSON Schema](1.0/bestillingAvVaretektsplass.schema.json)
* [Eksempler](1.0/eksempelfiler/)

## Headere forsendelse justisHub
SchemaName=BESTILLING_VARETEKTSPLASS  
SchemaVersion=1.1
senderOrganization=POLITIET
[RFC](../../../rfc/MessageName-header.md)

[Se changelog for endringer](changelog.md)

## Beskrivelse
Når en bestilling av varetektsplass er sendt så vil vi sende [siktelseTiltale](../../siktelseTiltale/readme.md) og [helseOgRisiko](../helseOgRisiko/readme.md).

[Se beskrivelse av flyt](flyt.md).

## Felter
### anmodningsId
anmodningsId er unik nøkkel på bestillingen av varetektsplass. Helse og risiko melding og siktelseTiltale vil referere til denne
bestillingen av varetektsplass ved bruk av anmodningsId.
### personStraffesakId
Nøkkel for personer som er siktet (tiltalt, domfelt) som ikke skal endre seg mellom oversendelser til domstolene/kriminalomsorgen.
Denne er ikke utviklet i BL ennå så derfor er den optional.
* Det vil være tilfeller der samme person vil får nye nøkler. Det er avhengig av hvordan det blir registrert og ryddet i BL.

### Omvendt voldalarm, Kriminelt nettverk ...
Feltene for omvendt voldsalarm, kriminelt nettverk og medisktede/insatte er felt som i EL-SA frontend skal være påbudt å velge ja eller nei.

## Status
Vi skal ha pilot av bestilling av varetektsplass, men vi skal splitte dagens melding.
* Bestilling av varetektsplass, selve bestillingen og tilleggsinformasjon om relaterte personer.
* [siktelseTiltale](../../siktelseTiltale/readme.md), her kommer medsiktede og fornærmede med strukturert i tillegg til selv pdf dokumentet.
* helse og risiko

## Avklaringer
1. Når er det nødvendig med restriksjoner/isolasjons informasjon i bestilling av varetektsplass? <br/>Kan den informasjonen vente til kjennelse/innsettelsesordre?
 Sjekker med Ragnhild, hvis begjæring ikke finnes så kan de fylle ut.
6. Feltene for omvendt voldsalarm, kriminelt nettverk og medisktede/insatte er felt som i EL-SA frontend skal være påbudt å velge ja/nei.
7. Pågrepet tidspunkt og pågrepet sted (henter fra begjæring hvis den finnes)
### Oppdatering av bestilling
Skal vi sende ny bestilling og si at vi ikke skal ha plass på den forrige eller skal vi oppdatere bestillingen (samme anmomdningsId).
Hvis vi skal oppdatere så må det være noen kriterier som vi må diskutere.

## Ønsker mangler
### Pågretet sted
 Pågrepet sted er mangelfull da det er fritekst i BL i dag og Kriminalomsorgen trenger kommune.
### Flere helse og risiko kategorier
* Tilrettelegging (krykker,bevegelsesutfordringer)
* Behov for sårstell (skutt,kuttskader etc.)

Trenger diskusjon med brukere på begge sider for gode kategorier, kanskje en tilretteleggin_handikap og ...
Viktig med klare kategorier og god beskrivelse for at politiet skal fylle inn all relevant informasjon.

