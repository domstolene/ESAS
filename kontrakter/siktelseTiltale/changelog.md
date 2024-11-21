# Endringslogg begjæring om dom

| Versjon | Beskrivelse   | Aktiv fra  | Aktiv til |
|---------|---------------|------------|----------|
| 1.0     | Arbeidsverson |            ||

## Versjon 1.0 arbeidsversjon til vi bruker den i produksjon
### 30.10.24 Ny siktelsesType
PAAGRIPELSE_BESLUTING som er en beslutning om pågripelse som av og til brukes som grunnlag i varetektsfengslinger.
### 23.09.2024 personinformasjon
Fjerner fornærmede da de sendes i begjaeringDom. (liten endring i begjaeringDom i egen PR).
Siktelsen kan teknisk inneholde flere siktede så beholder navn, kjønn og fødselsdato i tillegg til identifikator.
Hvis det er behov for fornærmede/foretak i siktelsen så bør det gjøres endringer i BL for å sørge for at
siktelsesdokumentet og det strukturerte er likt også med hensyn på fornærmede.
### 18.09.2024 anmodningsId
begjaeringAnmodningsId og anmodningsId skal være GUID overalt også i oneOf definisjon.
### 21.08.2024 Synkroniserer 
Fullbyrdelsesordre og bestilling av varetekt typer.

Bruk av dato datoTid, GUID typer, epost.
siktetPerson ny, alle detaljer som adresser osv. skal ligge i begjæring, bestilling ....
kun id type data.
fornaermedePerson uten adresse osv. 
kontaktInfo felles.
Straffesak nå også med koordinater hvis gjerningssted ikke er en adresse.
adresse forenklet og som fullbyrdelse/bestilling.
lovbudKombinertId utgår, vi bruker bare lovbud id'er
Fjerner kommune fra sted da det er kun for pågripelsessted som er noe annet.