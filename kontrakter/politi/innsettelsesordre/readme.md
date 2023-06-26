# Innsettelsesordre (PIN)
Innsettelsesordre er påtale sin ordre til Kriminalomsorgen om at en person skal sitte i varetekt og er istedet for en kjennelse fra retten når den ikke har kommet ennå. Denne blir kalt politiets innsettelsesordre av Kriminalomsorgen.

*Hvis rettens kjennelse kommer så er det ikke nødvendig med en innsettelsesordre så tidligere versjon med "innsettelsesordre" også når det foreligger en kjennelse utgår. Meldingen er ikke oppdatert ennå. De endringene kommer i en egen MR*

[Endringslogg](changelog.md)
## Status - ikke godkjent
Begge parter må være enige om innholdet før vi kan gå i produksjon.
## Data
I tillegg til forsendelse og detaljer om personen så blir følgende data med.
### Straffesaksdata
I første omgang så kommer informasjon kun fra hovedsaken og det kommer ikke med lovbud. Når siktelsen kommer (sammen med tilståelsessaker) så vil vi kunne sende med informasjon på alle straffesaker som siktede er involvert i.
### varetektsyklus
En varetektsyklus er en serie av varetektshendelser fra en person blir pågrepet til han slipper ut av fengsel. F.eks. følgende hendelser.
 1. Besluting om pågripelse
 2. Pågripelse
 3. Inn i politiarresten
 4. Overføre fra politiarresten til kriminalomsorgen.
 5. Slipper ut av fengsel ferdig med varetekt.

 VaretektSyklusId vil være lik på alle hendelser fra politiet på denne, men ikke til å begynne med. Alle som meldinger som er på nytt format har egen syklusId.

## Avklaringer
Er det behov for noen PDF dokumenter i den nye innsettelsesordren?