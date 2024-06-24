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

`Source` : Unikt og definert navn på virksomhet for avsender. F.eks. KDI, POLITI, DOMSTOL.


### Eksempel

Source = DOMSTOL

Pseudokode:

```

Map<String,Object> headerMap = new HashMap<String,Object>();
headerMap.put("Source", "DOMSTOL");

BasicProperties messageProperties = new BasicProperties.Builder()
.headers(headerMap)
.build();

channel.basicPublish("",myQueue,messageProperties,message.getBytes())

```

### Changelog

24.06.2023: Opprettet RFC for header 'Source'.