# bestilling varetektsplass endringer
Omorganisert slik at det er en katalog for hver melding og eksempelfiler på samme sted (forrige PR).

### 20.05.2023
1. Kontaktinformasjon for påtale/aktor/forsvarer kan oppgis eksplisitt for de tilfeller det ikke fremgår ennå  av siktelsen.
   Kriminalomsorgen og politiet må ha disse avklart før bestilling slik at kontaktpunkt for evt. manuell oppfølging blir enkel 
   og ikke involverer "spørrerunder" mot 3.personer for å finne rett adressat.
2. Fra-dato for fengslingen gjort obligatorisk for å redusere faren for misforståelser. (Antas ofte være bestillingsdato i praksis, men det var en usikkerhet der vi ønsker fjerne)
3. Krimtype foreslått Required på Straffesakdetaljer. (Det er alt oblig. med statistikkgruppe og krimtype følger alltid av denne uansett.)

Merk av hovedstraffesak er påbudt utfylt p.t. KO forutsetter derfor at en hovedstraffesak er registrert og at krimtype og statistikkgruppe er fylt ut her. Hvis denne forutsetningen faller, så må meldingen (kanskje via oneOf?) kreve at man i stedet fyller ut "hovedkrimtypen" manuelt. Dagens løsning virker imidlertid god - den sikrer også at vi alltid har et hovedstraffesaksnummer å referere til, og det er ryddig. 

### 17.04.2023
melding og forsendelse justeringer i hennhold til [begjaering varetekt](../varetekt/1.0/begjaeringVaretekt.schema.json)

1. Flyttet "felles" typer nederst i schema. Person og enkle typer.
2. Fjernet ønsket rettssted fra forsendelse.
3. restriksjon / isolasjon fjernet fraDato og tilDato fordi det ikke er mulig å fylle inn det nå.
4. Nytt fritekstfelt på restriksjoner/isolasjon så noe omstrukturering.
5. Risiko og helseopplysninger nå med egne element for risiko, helse, tilstand.
