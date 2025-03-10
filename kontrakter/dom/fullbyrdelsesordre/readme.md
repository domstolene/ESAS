# Fullbyrdelsesordre - ikke i produksjon

Versjon 1.0 er første versjon som vi skal i produksjon med sammen med tilståelsessaker.

## Headere forsendelse justisHub

SchemaName=FULLBYRDELSESORDRE  
SchemaVersion=1.0  
senderOrganization=POLITIET  

[RFC](../../../rfc/MessageName-header.md)  
[Se changelog for endringer](changelog.md)

## Beskrivelse

Basert på oprinnelig branch fra Jostein: [fullbyrdelsesordre-1](fullbyrdelsesordre-1)

Oversendelse av fullbyrdelsesordre fra påtale til Kriminalomsorgen når dommen er rettskraftig.
Selve ordren utstedes av jurist i BL før den oversendes med denne meldingen.
Fullbyrdelsesordren fra jurist vil også komme som PDF vedlagt denne meldingen.

Foregrepet soning er ikke støttet i melding da vi ikke vil implementere den nå.

Hjemmelsrekken er ikke med i første pilot.
Foregrepet soning er det veldig få av i løpet av året så ikke prioriterti første del av pilot.

## Status

Første versjon godkjent, men Kriminalomsorgen sier de ønsker mer informasjon, se kommentarer fra politiet i _kursiv_
1. Alternativ til domsnummer. (La inn domstolens saksnummer i visningen til brukerne her for nå, men er usikker på hva som er best å presentere for brukerne her.)
_Det kommer en løsning på politiets sitt domsnummer som også skal brukes til SSP, legger til som optional i første omgang._
2. Flagget som "har nye straffbare forhold". (Finnes i eksisterende XML-melding fra tidligere).
_Den skal være automatisk og vi får ikke til denne nå._
3. Tydelig merket som "U18".  (Ligger gjerne som info i påtegninsark nå.)
_Vi beregner automatisk om det er et forhold der siktede er under 18 år_
4. Kontaktinformasjon til domfelte. (Telefonnummer(e) med landkode og/eller epost). (Finnes i eksisterende XML-melding fra tidligere)
_Vi henter inne kontaktinformasjon mobilnummer/epost hvis det finnes.BL har ikke landkode som eget felt._
5. Fritekst ekstra informasjon om varetekt: (Ligger gjerne som info i påtegningsark nå.) ("Domfelte har vært varetektsfengslet...", "Domfelte sitter i dag i varetekt i Ringerike fengsel, han bes overført...").
_Vi har et beskrivelsesfelt der det kan skrives inn andre ting._
6. Domfeltes arbeidsgiver (Ligger gjerne som info i påtegningsark)
_Vi har ikke den informasjonen med god nok kvalitet da registreringene på straffesaken ikke blir oppdatert._

## Videre arbeid ønsker
KDI ønsker meddømte med i meldingen.
Ta med i neste versjon, ikke aktuelt i tilståelsessaker.

## Avklaringer

### Ordre og oversendelse
BL har en rutine for selv ordren og en for oversendelsen til Kriminalomsorgen.
Er det alltid påtaleansvarlig som skriver ordren i BL og noen andre som sender over til Kriminalomsorgen?
Kanskje vi burde ha både ordren og oversendelsen i EL-SA, beste med komplett løsning i EL-SA
Sjekk i BL om begge rutinene blir brukt til vanlig (flere distrikter)?

### Strukturerte reaksjoner
Hvilke reaksjoner trenger Kriminalomsorgen strukturert, er det nødvendig å mappe alle?
Første versjon er uten detaljerte hjemeler.

### Meddømte
Som potensielt ikke skal sone sammen, hvilke meddømte skal være med? Hva må brukerne hos politiet gjøre?
Meddømte i samme dom står i dommen og kan plukkes med.

### Fornærmede
Trenger kanskje visning og valg av bruker, kan være fornærmede registrert på saken som ikke trengs/skal informeres til Kriminalomsorgen.
(burde vært ryddet i saken)
