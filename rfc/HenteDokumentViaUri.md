# Hente dokument via URI

**To be Reviewed By**: Alle

**Authors**: Emil N. Tørmoen

**Status**: WIP

## Problemstilling

Det har defacto vært protokoll SFTP som benyttes når URI til dokumenter utveksles i meldinger over JustisHub. Denne teknologien ønsker flere virksomheter å fase ut, og det er derfor nødvendig å innføre en alternativ protokoll som kan benyttes. 

HTTPS innføres som alternativ protokoll, noe som forutsetter at virksomheter som sender dokumenter med HTTPS-URI'er tilbyr et API med et standardisert sett med egenskaper.

## Løsningsforslag

### API-utforming og identifikator
API-et skal eksponere et endepunkt der filen kan hentes ved å følge en URI. Denne URI-en skal ende med en unik identifikator i form av en GUID (UUID).

Eksempel på URI-struktur:
https://api.virksomhet.no/filer/v1/nedlasting/550e8400-e29b-41d4-a716-446655440000

### Støtte for delvis henting (Partial Content)
For å håndtere store filer opp til 5GB effektivt og gi mulighet for å gjenoppta avbrutte nedlastinger, skal API-et støtte HTTP status 206 Partial Content ved [Single Part request](https://www.rfc-editor.org/rfc/rfc9110#name-single-part). Dette innebærer at API-et må kunne tolke Range-headeren i forespørselen og returnere det forespurte byteranget, sammen med headere for Content-Range og Content-Length slik forventet av spesifikasjonen.

### Tilgjengelighet og retensjon
Filer må være tilgjengelige via API-et i minimum 15 dager fra det tidspunktet de først ble gjort tilgjengelige (publisert i en melding på Justishub). Etter 15 dager kan tilbyderen slette filen eller gjøre den utilgjengelig via dette grensesnittet. Filene skal kunne hentes flere ganger i løpet av denne tidsperioden.

### Autentisering
 API-et må sikre at kun autoriserte mottakere får tilgang til filene. Dette krever at avsender begrenser tilgangen til virksomhetene som er tiltenkte mottakere.
 [Maskinporten](https://docs.digdir.no/docs/Maskinporten/maskinporten_guide_apikonsument.html) benyttes for autentisering for token til utveksling i kall.

 Diskusjon: Standard struktur på scopes per virsomhet som kan kalle? Referere til best-practices for scrope-bruk?

### HTTP Statuskoder og feilhåndtering

| Kode | Betydning | Praktisk konsekvens og rutine |
| :--- | :--- | :--- |
| **200 OK** | Vellykket henting. | Hele filen returneres i responsen. |
| **206 Partial Content** | Vellykket delvis henting. | Retur av et spesifisert byte-område (Range). Brukes ved store filer eller gjenopptak av nedlasting. |
| **400 Bad Request** | Ugyldig forespørsel. | Forespørselen er feil utformet (f.eks. ugyldig GUID-format). Konsumenten må rette opp i URI eller headere før nytt forsøk. |
| **401 Unauthorized** | Manglende autentisering. | Konsumenten har ikke oppgitt gyldig legitimasjon. Sjekk at tokenbruk og Maskinporten er satt opp riktig. |
| **403 Forbidden** | Ingen tilgang. | Konsumenten er autentisert, men har ikke rettigheter til akkurat denne filen. Sjekk at riktig scope benyttes via Maskinporten |
| **404 Not Found** | Filen finnes ikke. | Filen er enten slettet (f.eks. etter 15 dager), eller GUID-en er feil. Hvis filen er under 15 dager gammel, kontakt avsender for avklaring. |
| **405 Method Not Allowed** | Ugyldig type forespørsel. | Kun metode GET støttes. |
| **416 Range Not Satisfiable** | Ugyldig Range. | Det forespurte byte-området ligger utenfor filens faktiske størrelse. Sjekk filstørrelse og juster `Range`-header. |
| **500 Internal Server Error** | Teknisk feil hos tilbyder. | En uventet feil oppstod på serversiden. Konsumenten bør forsøke på nytt senere med eksponentiell ventetid (backoff). |
| **503 Service Unavailable** | Tjenesten er nede. | API-et er midlertidig utilgjengelig (vedlikehold eller overbelastning). Prøv igjen senere med eksponentiell ventetid (backoff). |

Diskusjon: 
* Støtte for throttling - Too Many Requests
* 410 Gone? Skille på har-vært og aldri-vært?
* Er det andre 5xx-koder som bør kunne deles uten å generealiseres til 500
* 304 Not Modified? Kan være nyttig hvis man tillater at filer korrigeres in-situ med samme GUID. MEN: Gir utfordringer med notoritet og checksum i melding.

### Andre krav som stilles avsender

- Det er ennå meldingen som bærer metadata om filen, og definert endepunkt serverer bare bytes. Det er derfor ennå meldingsmottakers ansvar blant annet å benytte sjekksum i meldingsstrukturen per dokument for å sjekke integriteten på bytene som er mottatt fra endepunkt.
- API-et må logge hver forespørsel om fil (virksomheten som etterspør fil, kilde-ip), og ta vare på logginnslaget i minimum tre måneder.

Diskusjon: Ønsker man flere metadata, eks. avsender-system i egen header?

## Eksempel

## Changelog

31.03.2026: Opprettet RFC.
