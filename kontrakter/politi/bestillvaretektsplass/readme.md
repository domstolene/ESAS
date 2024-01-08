# Bestilling av varetektsplass
Versjon 1.0 er første versjon som vi skal i produksjon med.
* [JSON Schema](1.0/bestillingAvVaretektsplass.schema.json)
* [Eksempler](1.0/eksempelfiler/)

## Headere forsendelse justisHub
SchemaName=BESTILLING_VARETEKTSPLASS  
SchemaVersion=1.0
[RFC](../../../rfc/MessageName-header.md)

[Se changelog for endringer](changelog.md)

## Status
Venter på avklaring fra styringsgrupp/Justisdepartementet, avslutter alle PR for å kunne omorganisere.

## Ønsker / mangler
### Gammel PR #50 gjennomgang med Øivind Bjørløw
branch feature/paagrepetsted-og-verge-full-person, sletter branch når vi har inkorporert endringer.

- Pågrepet sted er vel viktigst. Er det vanskeligheter med å få med i ny løsning?
- Kontaktopplysninger for advokater var foreslått inn. Etter modellen brukt i PeU, mener jeg huske.
- Krimtype foreslått obligatorisk (men det kan vel utledes om det er vanskelig for dere).
- Bedre/utvidede beskrivelser.
- Mye av PR var et ekstra eksempel. Vi bør generelt bli bedre på flere og bedre eksempler, tenker jeg.
### Pågrepet kommune
Pågrepet kommune brukes til NAV av Kriminalomsorgen fordi det er det lokale NAV kontoret i pågrepet kommune som har ansvaret ?

## Avklaringer
Hvordan skal det virke med sentralt til Kriminalomsorgen og direkte til et fengsel?
Vanligvis sendes det til KDI sentralt og bruker hos politiet blir ikke bedt om å velge fengsel. Det er mulig å velge fengsel direkte, det kan være en advarsel.

Schema vil i alle fall innehold bare en mottakerOrganisasjon som er enten KDI eller et fengsel, KDI kan implementere at det rutes til sentralt mottak hvis det er feil at det skal rett til fengsel.

Kan vi ha med det som tekst på kvittering ?