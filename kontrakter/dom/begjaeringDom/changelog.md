# Endringslogg begjæring om dom

| Versjon | Beskrivelse | Aktiv fra | Aktiv til |
|---------|-------------|-----------|-----------|
| 1.0     | test        |           |           |

## Versjon 1.0 er låst begynner med arbeidsversjon for endringer

### 23.09.2024 Fornærmede med kobling til straffesak
SiktelseTiltale er kun med siktede så fornærmede i begjæringDom må inneholde kobling til hvilken straffesak de er fornærmet i (som vitner).
### 18.09.2024 en siktet person
Endrer skjema til å inneholde bare en siktet person da det er det vi har i tilståelsessaker.
Fjerner da definisjonen på siktetForetak.
### 21.08.2024 Justeringer
Rydde kontaktinfo kontaktinfoperson - nå likt som fullbyrdelsesordren/bestilling varetektsplass (forenkling)
epost, uuid osv. - ok
tar i bruk "dato" og "datoTid" typer.
Rydde personer (personStraffesakId), siktetPerson, siktetPersonEnkel, tolk, relatertPerson, relatertPersonEnkel
påtaleansvarlig ikke ansvarlig paatalejurist

### 25.06.2024 oppdatering
Større oppdatering i neste merge request.
* Vitner på saken.
* Tolkebehov
* Forsvarer
* Informasjon om bistandsadvokat er varslet
* Verger til siktede
* Fødselsnummer, Dnummer og SSP nummer med felles type og validering.
