# bestilling varetektsplass endringer
Omorganisert slik at det er en katalog for hver melding og eksempelfiler på samme sted (forrige PR).

### 17.04.2023
melding og forsendelse justeringer i hennhold til [begjaering varetekt](../varetekt/1.0/begjaeringVaretekt.schema.json)

1. Flyttet "felles" typer nederst i schema. Person og enkle typer.
2. Fjernet ønsket rettssted fra forsendelse.
3. restriksjon / isolasjon fjernet fraDato og tilDato fordi det ikke er mulig å fylle inn det nå.
4. Nytt fritekstfelt på restriksjoner/isolasjon så noe omstrukturering.
5. Risiko og helseopplysninger nå med egne element for risiko, helse, tilstand.