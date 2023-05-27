## Kvittering

Kvitterings-meldingen er tenkt brukt som en tilbakemelding på status for en gitt melding fra mottaker til avsender.

Hver kvitteringsmelding skal som minimum inkludere en egen _meldingsid_, en _referanseid_ til meldingen den svarer til, pluss en status på den refererte meldingen.

Dersom noe er feil på referansemeldingen skal kvitteringsmeldingen indikere om feilen ligger på avsenders eller mottakers side, og indikere om det er en teknisk feil eller mangler dersom feilen er på avsendersiden.
En kvitteringsmelding som indikerer feil bør også inneholde en beskrivelse om hva som har feilet.

## Headere forsendelse justisHub
SchmaName=KVITTERING  
SchemaVersion=1.0

[RFC](../../../rfc/MessageName-header.md)

### Noen prinsipper:

* Status **UNDER_MOTTAK** indikerer at meldingen er mottatt, men ikke ferdig prosessert inn i saksbehandlingssystemet. Det kan fremdeles oppstå feil som gjør at avsender eller mottaker må starte feilsøking.
* Status **MOTTATT** indikerer at alt er ok. 
  * Avsender kan fjerne vedlegg fra filtjeneste når MOTTATT status er mottatt
  * Ingen nye kvitteringer forventes.
* Status **FEILET_AVSENDER_TEKNISK** indikerer at det er en teknisk feil hos avsender. F.eks. feil format, vedlegg som ikke fins på STFP selv om det fins referanse i melding etc. Det er forventet av _avsender_ iverksette nødvendige tiltak for å sende melding på nytt.
  * Feltet 'beskrivelse' skal fylles ut med en feilmelding/exception
  * En slik status skal aldri sendes etter at en MOTTATT melding er sendt
  * Ingen nye kvitteringer forventes.
* Status **FEILET_AVSENDER_MANGLER** indikerer at det er mangler i forsendelsen som er avdekket av saksbehandler.  F.eks. at forventet påtegning er avglemt. Meldingen forkastes og det er forventet av _avsender_ skal sende hele meldingen på nytt - vanligvis et menneske. 
  * Feltet 'beskrivelse' skal fylles ut med en feilmelding skrevet av bruker
  * En slik status skal aldri sendes etter at en MOTTATT melding er sendt
  * Ingen nye kvitteringer forventes.
* Status **FEILET_MOTTAKER** indikerer at det er noe feil hos mottaker. F.eks. bug eller system nede. Det er forventet at _mottaker_ undersøker.
  * En slik status skal aldri sendes etter at en MOTTATT melding er sendt
  * Det forventes at det skal komme en MOTTATT, FEILET_AVSENDER_MANGLER eller FEILET_AVSENDER_TEKNISK kvittering i etterkant dersom feilen utbedres på mottakersiden. Men statusen kan bli stående dersom problemet løses ved at meldingen sendes på nytt
