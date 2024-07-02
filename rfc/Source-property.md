## Property for å unikt identifisere avsender-virksomhet for melding på JustisHub

**To be Reviewed By**: Martin Myran, Jostein Klaksegg, Ole Rabanal

**Authors**: Carl Fredrik Bøkestad

**Status**: Diskusjon (24.06.2024)

### Problemstilling

Ved mottak av melding har man behov for å unikt identifisere hvilken virksomhet som har sent meldingen. Dette blant annet for å enkelt vite hvor man skal returnere kvittering uten å åpne meldingen.

I prinsippet kan f.eks. _domstolen_ motta meldinger både fra _politiet og kriminalomsorgen_ på samme kø. Dette gjør det noe utfordrende å returnere kvittering til riktig avsender-virksomhet uten å tolke og lese innholdet i meldingen.

I teorien kan man også benytte oppsett av exchange, kø og routing-key for å utlede hvilken virksomhet som har sent meldingen. 
Dette er sårbart dersom man senere endrer på integrasjonspatternet ved endring av f.eks. routing-key.

### Løsningsforslag

Avsender legger på ny header-property.

`Source` : Unikt og definert navn på virksomhet for avsender. F.eks. KRIMINALOMSORGEN, POLITIET, DOMSTOLEN.

Disse unike navnene skal defineres i en kodeverkfil (typ _kjente aktører på Justishub_), samt en beskrivelse i en MD-fil.

Denne propertien skal settes på alle meldinger i ESAS III initiativet som er basert på JSON-formatet (både nye og gamle).

### Eksempel

Source = DOMSTOLEN

Pseudokode:

```

Map<String,Object> headerMap = new HashMap<String,Object>();
headerMap.put("Source", "DOMSTOLEN");

BasicProperties messageProperties = new BasicProperties.Builder()
.headers(headerMap)
.build();

channel.basicPublish("",myQueue,messageProperties,message.getBytes())

```

### Changelog

24.06.2024: Opprettet RFC for header 'Source'.

28.06.2024: Presisering av hvor virksomheter defineres, samt hvilke meldinger dette skal gjelde for.