## Headere for unik identifisering av skjema for melding på JustisHub

**To be Reviewed By**: Martin Myran, Carl Fredrik Bøkestad

**Authors**: Jostein Klakegg

**Status**: Beslutning (16.05.2023)

### Problemstilling

Ved mottak av melding har man behov for å unikt identifisere skjema og versjon for melding. 
For eksempel for å kunne velge riktig strategi for deserialisering eller validering. 

Meldinger definert av ESAS III benytter meldingsformat JSON. Meldingsinnholdet er signert og Json Web Signatur (JWS) benyttes for å representere det signerte meldingsinnholdet. 
Det betyr i praksis at selve meldingen er enkodet og pakket inn og ikke kan leses direkte uten å pakke ut denne.

I implementasjonen av Rabbit MQ med MSMQ foreligger det allerede en predefinert property for identifikasjon av meldingstype med navn `type`, 
men det foreligger usikkerhet rundt om denne kan være i bruk til andre formål allerede eller kan kollidere med andre implementasjoner i fremtiden. 

I teorien kan man benytte oppsett av exchange og kø for å utlede hvilken melding man forventer å få tilsendt ved at en kø er dedikert til en melding. 
Dette er sårbart dersom man senere endrer på integrasjonspatternet ved å for eksempel endre fra topic til direct eller fanout. 
Routing-key er ikke nødvendigvis stabil ved endring i kø-oppset eller exchange-type, og er i utgangspunktet metadata ment for exchangen, så i teorien bør den ikke benyttes til å indentifisere meldingstype selv om det i praksis er mulig. 


### Løsningsforslag

Avsender legger på to headere.

`SchemaName` : Unikt navn på skjema for melding.
`SchemaVersion` : Semantisk versjon av skjema for melding.


### Eksempel

SchemaName = VARETEKT_KJENNELSE
SchemaVersion = 1.0

Pseudokode:

```

Map<String,Object> headerMap = new HashMap<String,Object>();
headerMap.put("SchemaName", "VARETEKT_KJENNELSE");
headerMap.put("SchemaVersion", "1.0");

BasicProperties messageProperties = new BasicProperties.Builder()
.headers(headerMap)
.build();

channel.basicPublish("",myQueue,messageProperties,message.getBytes())

```

### Changelog

01.05.2023: Opprettet RFC for header MessageName.
10.05.2023: Endret RFC til å gjelde headere SchemaName, SchemaVersion, SchemaId. 
16.05.2023: Besluttet å benytte SchemaName og SchemaVersion. SchemaId utgår. Oppdatert status på RFC til status Beslutning.
