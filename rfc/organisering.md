# Organisering av kontrakter

**To be Reviewed By**: Alle

**Authors**: Martin Myran

**Status**: WIP

## Problemstilling
Dagens organisering basert på hvem som sender meldingen kan forbedres. Forslaget i koordineringsmøtene er å bruke en funksjonell oppdeling istedet.

Øverste nivå f.eks. kjennelser er for håndtering av alle kjennelser som ikke er varetekt, hvis det blir behov for mer spesifikke meldinger så kan det f.eks. lages en tvangsmiddel katalog med begjaering om kjennelse på tvangsmiddel og kjennelse på tvangsmiddel (som varetekt)

## Forslag til oppdeling av dagens meldinger
Har laget en generell gruppe for kjennelser som skal fikse resten av kjennelsene f.eks. på tvangsmiddel. Hvis vi får behov for spesielle inndelinger så kan vi lage kjennelseTvangsmiddel på samme nivå.
```
└── kontrakter
    ├── beslutninger (vet ikke helt, beslutning om at det blir ankebehandling, lukkede dører, ... )
    │
    ├── dom
    │   ├── begjaeringDom (tilståelsessaker, meddomssaker eller vi må splitte)
    │   ├── dom (eventuelt domTingrett, domLagmannsrett, domHoeyesterett hvis stor forskjeller)
    │   ├── ankeDom (eventuelt en for lagmannsrett og en for Høyesterett)
    │ 
    ├── felles
    │   ├── kodeverk
    │   ├── kvittering
    │   ├── siktelseTiltale
    │
    ├── konfliktraadet (kommer flere meldinger under her etter hvert)
    │   ├── oppdatertSaksstatus
    │   ├── overfoersakKonfliktraad
    │
    ├── kjennelser (generell inkl, andre tvangsmiddel.)
    │   ├── begjaeringKjennelse
    │   ├── kjennelse
    │   ├── ankeKjennelse (kanskje brukes av både politi og domstol hvis siktede anker)
    │
    ├── personundersoekelse
    │   ├── rekvisisjonPersonundersoekelse
    │   ├── returPersonundersoekelse
    │
    ├── transport
    │   ├── bestillTransport
    │
    ├── varetekt
    │   ├── begjaeringVaretekt
    │   ├── kjennelseVaretekt
    │   ├── kjennelseVaretektPoliti
    │   ├── bestillVaretektsplass
    │   ├── tilbudVaretektsplass
    │   ├── akseptTilbudtVaretektsplass
    │   ├── avvisningTilbudtVaretektsplass
    │   ├── innsettelsesordre
    │
    ├── personundersoekelse
    │   ├── rekvisisjonPersonundersoekelse
    │   ├── returPersonundersoekelse

```