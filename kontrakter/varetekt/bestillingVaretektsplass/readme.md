# Bestilling av varetektsplass
Versjon 1.0 er første versjon som vi skal i produksjon med.
* [JSON Schema](1.0/bestillingAvVaretektsplass.schema.json)
* [Eksempler](1.0/eksempelfiler/)

## Headere forsendelse justisHub
SchemaName=BESTILLING_VARETEKTSPLASS  
SchemaVersion=1.0
[RFC](../../../rfc/MessageName-header.md)

[Se changelog for endringer](changelog.md)

## Beskrivelse
Når en bestilling av varetektsplass er sendt så vil vi sende [siktelseTiltale](../../siktelseTiltale/readme.md) og [helseOgRisiko](../helseOgRisiko/readme.md).

[Se beskrivelse av flyt](flyt.md).

## Felter
* Feltene for omvendt voldsalarm, kriminelt nettverk og medisktede/insatte er felt som i EL-SA frontend skal være påbudt å velge ja eller nei.

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
8. Ansvarlig jurist. Velger påtaleansvarlig på hovedsaken.

## Ønsker mangler
 Pågrepet sted er mangelfull da det er fritekst i BL i dag og Kriminalomsorgen trenger kommune.
