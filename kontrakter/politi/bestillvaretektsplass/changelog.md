# bestilling varetektsplass endringer
| Versjon | Beskrivelse | Aktiv fra | Aktiv til |
| --- | --- | --- | --- |
| 1.0 | Pilot av denne meldingen i 2023, dato ikke bestemt | | |

## Versjon 1.0 pilot 2023
### Ny bestilling av varetektsplass 01.8.223
Diskusjoner om bestilling av varetektsplass se også [PR 75](https://github.com/domstolene/ESAS/pull/75). Bekymring på flyt er at vi det kan bli "gamle" helse og risikoopplysninger.

1. dato/datoTid rydding.
1. Siktelse informasjon kommer senere så det er fjernet fra skjema nå, se [readme.md](./readme.md)
1. Lovbudreferanse på restriksjoner / isolasjon er fjernet som i kjennelseVaretektPoliti. Det er entydig definert med enumerert type *sjek status på denne med kommentarer fra Jostein* 
1. Restriksjon ANNET er fjernet
### Synkronisering i 17.04.2023
melding og forsendelse justeringer i hennhold til [begjaering varetekt](../varetekt/1.0/begjaeringVaretekt.schema.json)

1. Flyttet "felles" typer nederst i schema. Person og enkle typer.
2. Fjernet ønsket rettssted fra forsendelse.
3. restriksjon / isolasjon fjernet fraDato og tilDato fordi det ikke er mulig å fylle inn det nå.
4. Nytt fritekstfelt på restriksjoner/isolasjon så noe omstrukturering.
5. Risiko og helseopplysninger nå med egne element for risiko, helse, tilstand.