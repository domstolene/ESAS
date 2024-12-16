# Endringslogg domsavgjørelse

| Versjon | Beskrivelse       | Aktiv fra  | Aktiv til |
|---------|-------------------|------------|----------|
| 1.0     | Initiell vversjon |            ||

## Versjon 1.0 arbeidsversjon ennå
### 01.08.2024 første versjon av domsavgjørelse
Denne versjonen har noen kjente mangler som er planlagt å ta inn på et senere tidspunkt:
* Flere _reaksjoner_ vil bli inkludert etterhvert
* Strukturert data i forbindelse med _forkynning_ blir ikke med i denne versjonen

### 19.11.2024 endring fra 'meddeltIRetten' til 'fokynning'
* Lagt til eget element for forkynings-data
* Endret reaksjoner fra array til ett objekt, og lagt inn array på de reaksjonstyper det kan være flere av
* 'reaksjoner'-elemetet blir ikke med ved frifinnelse (i stedet for tom array som før)
* 'hjemmel' og 'varighet' er nå required ved rettighetstap
* 
### 27.11.2024 LovbudkombinertId utgår fra siktelsen, bruker samme begrep her
Fint om vi samkjører og fjerner lovbudKombinertId og kjører at en post kan ha flere lovbud som gjelder med hver sin lovbudId.
Endring i siktelse fra en stund tilbake

### 12.12.2024 Gjør om basissakId til optional, lovbud til 'oneof' og fjern straffesaksnummer
Dersom en post legges i domstolen har vi ikke lenger basissakId. Gjør derfor om denne til optional i kontrakten
Dersom det er en post politiet kjenner til har politiet allerede mappingen melleom basissakId og straffesaksnummer. Sender derfor ikke straffeaksnummer per post tilbake.
    Om posten er ny kjenner domstolen uansett ikke til straffesaksnummeret så ingen vits i å inkludere dette.
Gjort om lovbud til 'oneof'. Dersom vi gjennbruker politiets sitt lovbud returnerer vi kun lovbudId. Dersom domstolen har opprettet lovbudet returneres kun lovbudStreng.
