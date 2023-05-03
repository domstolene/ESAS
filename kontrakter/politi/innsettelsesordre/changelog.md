# Innsettelsesordre endringslogg
## 28.04.2023 synkroniser med begjæring om varetekt og bestilling av varetektsplass
Innsettelsesordren er ikke endret på lenge og trenger oppfriskning med struktur som er mer lik begjæring om varetekt og bestilling av varetetektsplass.
Trenger vudering av all informasjon om risiko, helse og tilstand i arrsesten som kanskje ikke er releveant for juristen å fylle ut. Dette må vi avklare på vår side.

* Formattering Prettier
* person og personForetak typer er oppdatert så de er like begjæring om varetekt og bestilling av varetektsplass.
* type definisjoner av straffesaksnummer, unikId, osv. fra bestillingAvVaretekt
* date-time er endret til date (fødselsdato, avsagtDato, ..) der det tidligere var brukt date-time.
* forsendelse lik bestillingAvVaretekt (organisasjon)
* Ansatt person uten brukeridentifikasjon.
* melding som er navnet på meldingen er slettet. Skal være en del av header informasjon i rabbitMQ.

### Trenger avklaringer
#### Forsvarer
skal det være med ? Usikker på hvem som har ansvaret for oppnevning av forsvarer. Det er ikke med i dag.

#### Verger
Hva skal KDI med verger til fornærmet og vitner, er det behov for det?
Vi må sørge for at det kun i saker tiltalte er med.

### Gjenstår
Begynn med begjæring om varetekt og restriksjon annet.
verger - hvilke data skal vi sende med. Ikke foreslå vergetype nå.
reaksjoner fra domstolene og bejæring fra politiet likt som de andre.
