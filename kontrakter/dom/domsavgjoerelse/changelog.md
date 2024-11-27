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