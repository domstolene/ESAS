# Endringslogg begjæring om dom

| Versjon | Beskrivelse                                  | Aktiv fra | Aktiv til |
|---------|----------------------------------------------|-----------|-----------|
| 1.2     | Kontaktdetaljer/aktor møter i retten         | |           |
| 1.1     | pakkeId for flere meldinger som hører sammen | |           |
| 1.0     | test                                         |           |           |

## 1.2 Kontaktdetaljer / aktor møter i retten
Tilbakemeldinger så langt sier at det er feil å oppgi avsender og påtaleansvarlig sitt telefonnummer.
* Vi har ikke gode nok data på personer sin telefonnummer.
* Det er ofte andre personer som skal kontaktes (avdeling) 
* Vi velger derfor å oppgi distriktet sitt sentralbord som standard på alle meldinger som trenger kontaktdetaljer.

## 1.1  korrigering av begjæring
Vi trenger en måte å koble sammen meldinger som hører sammen.
Vi vil sende meldingene med samme pakke id.
Ved korrigering av begjæring så vil vi sende begjaeringDom, paastandStraff og siktelseTiltale på nytt.
Legger inn informasjon om at persjon er under 18 på et av gjerningstidspunktene.
## Versjon 1.0 er låst begynner med arbeidsversjon for endringer
### 17.02.2025 Korrigering av begjæring av dom
Endres i arbeidsversjon først, blir versjon 1.1.
Lager pakke med referanse til alle andre meldingstyper.
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
