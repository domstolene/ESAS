# Innsettelsesordre
Når siktet blir satt i fengsel hos Kriminalomsorgen (KDI) skal det alltid følge med en innsettelsesordre. Tidligere ble dette gjort ved at politiet fyllte ut en rødlapp som var et skjema med detaljer om siktede og soning i varetekt.
Innsettelsesordren kan komme før kjennelse når en siktet blir flyttet fra politiarresten til Kriminalomsorgen og etter kjennelsen. Når innsettelsesordren kommer etter kjennelse så skal kjennelsen følge med.
PIN er politiets innsettelsesordre som er den som kommer før kjennelse fra retten.

[Endringslogg](changelog.md)

Dette er en stor og komplisert melding som vi må sjekke om passer sammen med arbeidsprosessene til poltiet. Tenker særlig på informasjon om helse og risiko. En bedre løsning er å dele opp med egen informasjon om helse og risiko og oppdatering når det endres.
1. Innsettelseordre med fokus på juristen sin ordre, kun restriksjoner hvis kjennelse ikke er mottatt.
2. Kjennelse fra domstolene kun egen melding, ikke en del av denne.
3. Risiko og helse informasjon egen melding. Bør også gjelde bestilling av varetektsplass.

## Begreper
### varetektsyklus
En varetektsyklus er en serie av varetektshendelser fra en person blir pågrepet til han slipper ut av fengsel. F.eks. følgende hendelser.
 1. Besluting om pågripelse
 2. Pågripelse
 3. Inn i politiarresten
 4. Overføre fra politiarresten til kriminalomsorgen.
 5. Slipper ut av fengsel ferdig med varetekt.

 VaretektSyklusId vil være lik på alle hendelser fra politiet på denne.

## Avklaringer
Restriksjonstype annet, trenger eksempler fra påtale.

Deling av data, kan vi dele fødselsnummer mm. på vitner og verger. Hva trenger Kriminalomsorgen det til?
Hva med kjønn, er det nødvendig på verger?

Risiko og helseinformasjon ligger med som frivillig element nå, krever mer kartlegging av prosessen hos politiet. Kanskje denne kommer like i etterkant i egen melding eller kune i bestilling av varetektsplass.

## Stegvis implementering
Verger
Straffesaker som er de som er med i siktelsen.
Varetektsyklusid - senere 