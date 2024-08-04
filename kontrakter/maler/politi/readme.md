# Politiet sine maler for JSON Schema kontrakter
Forslag til maler på JSON elementer.
Ta i bruk verktøy som kan sammenstille Json filer .. slik at vi kan ha noen felles definisjoner istedet
for bare kopiering fra maler...

## personForetak
Innholder definisjoner for personer og foretak i straffesaker.
### personStraffesakId
Nøkkel hos straffesak på en person i en straffesak. Først og fremst for å kunne
identifisere siktede personer. Denne nøkkelen vil som regel holde seg konstant
over tid selv om personer endrer navn, fødselsnummer osv.

Denne nøkkelen kan endre seg på en fysisk person i noen tilfeller.

