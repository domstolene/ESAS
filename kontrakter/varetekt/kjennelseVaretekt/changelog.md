# kjennelseVaretekt endringslogg
| Versjon | Beskrivelse                                 | Aktiv mottaker | Aktiv sender |
|---------|---------------------------------------------|----------------|--------------|
| 1.3     | Støtte for surrogat. Strukturerte vilkår    |                |              | 
| 1.2     | Kjennelse varetekt lagmannsrett/Høyesterett | 08.02.2024     | 25.03.2025   | 
| 1.1     | Kjennelse med minst ett dokument            |                | 26.10.2023   | 
| 1.0     | Første versjon i produksjon                 |                | 10.10.2023   | 

# Versjon 1.3
1. Legger til støtte for strukturerte vilkår i varetekts-kjennelse
2. Legger til støtte for fengslingssurrogat
3. Litt refaktorering (flytter restriksjon/isolasjon innunder 'fengsling')

# Versjon 1.2
1. Støtte for kjennelse fra Lagmanserett/Høyesterett. Melding inneholder nå:
   * Hvilken rettsinstans som sender kjennelse
   * Opprinnelig kravId
   * Avgjørelse-resultat
2. Flere detaljer rundt hva som er anket

# Versjon 1.1
1. Legger til krav om at minst ett dokument er vedlagt meldingen.
2. Fjerner 'required' på 'rettsmoeteTidFra' og 'rettsmoeteTidTil'

# Versjon 1.0
1. Bump versjon fra 0.9 til 1.0
2. Fjernet utviklings-versjonen (0.9)

### Endringer etter pull request https://github.com/domstolene/ESAS/pull/19
1. Generell opprydning
2. Harmonisering opp mot politiets begjæring
3. camelCasing i defninsjoner (was PascalCase)
4. Personer og fødselsnummer
   En siktet person har alltid fødselsnummer eller SSP nummer.
   Hvis en person har D nummer så får han også SSP nummer.
   Se egen diskusjon om identifikatorer på personer.
   https://domstol.atlassian.net/l/cp/MiGdKEZX
   array av identifikatorer på person
5. Endret bruk av OneOf i forhold til avtalte rettningslinjer
6. Lagt inn ny property "rettelse"




