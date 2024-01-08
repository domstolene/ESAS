# Bestilling av transport
Skjemaet skal p.t. IKKE brukes til generelle transportbestillinger, kun transport ifm *vareteksinnsettelsen*
Bruksområde kan antagelig utvides i fremtiden, men det må koordineres videre mellom KO og PIT

Versjon 1.0 er første versjon som vi skal i produksjon med.
* [JSON Schema](1.0/bestillingAvTransport.schema.json)
* [Eksempler](1.0/eksempelfiler/)

[Se changelog for endringer](changelog.md)

## Status
1. versjon merge til main for å kunne omstrukturere. PR og Branch er slettet. Jobber med i detalj når denne blir aktuell og implementere.

## Ønsker / mangler

## Avklaringer
Er det nyttig å oppgi transportlokasjoner med GPS-koordnater el.l.? Dagens papirskjema er bare 1 linje fritekst per adresse. Mulig det er "godt nok" i første omgang.

Vi etablerer sentralt mottak til Kriminalomsorgen. 
Har KTT behov for mer struktur for å forfine ruting-regler, eller er  manuell ruting fra "8301transport@kriminalomsorg.no" fortsatt godt nok?
PeU note (kun indirekte relevant her): Ruting internt i KO avhenger bl.a. av bosted. Trengs "pågrepetkommune" bedre strukturert for odde cases - hjemløse etc?

Kan noe informasjon fjernes på sikt? Mottaker er separat (KTT) fra mottaker av bestilling av varetektsplass, så med tanke på å få en første løsning raskt i prod er det en fordel å duplisere en del informasjon her. Antagelig er dette enklere å lage i "BL next" også da vi antagelig kan gjenbruke mer kode framfor skreddersøm.

typeFremstiling: 
Vi har lagt på en type for videre/returtransport etter en fremstilling. 
Uavklart om dette skjer ved varetektsinnsettelser (man "vet" ikke om dommer etterkommer politiets begjæring, så det er ikke alle tilfeller der siktede skal til varetekt i etterkant - men mulig man har en i praksis på å  bestille+avbestille transport i de tilfellene? Må avklares 

kontaktinformasjon (avsender):
KTT trenger telefonnummer til bestiller. (Dette er påbudt i dagens skjema.)
