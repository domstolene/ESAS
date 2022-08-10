## Rullende oppgraderingsvindu p� JustisHub

**To be Reviewed By**: Martin Myran, Lasse Motr�en

**Authors**: Carl Fredrik B�kestad

**Status**: Draft

### Problem

I forbindelse med oversendelser av meldinger over JustisHub trenger vi et system der vi kan endre/oppgradere kontrakter uten nedetid og uten � innf�re _breaking changes_.

Det er ulike virksomheter som er koblet til JustisHub s� det er viktig at alle parter er i stand til � gj�re oppgraderinger uten at vi blir for avhengige av hverandre - f.eks. slik at vi slipper samtidige oppgraderinger.


### L�sningsforslag

Forslaget g�r ut p� at ved en oppgradering av kontrakt er avsender/produsent av melding ansvarlig for � sende ut alle versjoner av meldingen i en _grace periode_ p� samme k�.
*Grace perioden* for et gitt milj�, m� blir enige om p� forh�nd - f.eks. 1 m�ned (eller til at mottaker har informert om at de ikke lenger har behov for tidligere versjoner)

Header p� meldingene m� da inneholde et versjonsnummer som tilsvarer versjonen p� kontrakten meldingen skal reflektere. Mottaker/konsument av melding velger da selv hvilken versjon av meldingen den skal behandle ved � se p� versjonsnummeret. Andre versjoner av meldingen skal kastes/ignoreres.

Ved introduksjon  av ny versjon er det da avsender sitt ansvar � kommunisere *End of life" p� forrige versjon til mottaker.


**Eksempel**:

* Domstolen sender meldinger til politiet p� _versjon 1_.
* Ved en oppgradering av kontrakt starter domstolen � sende meldinger p� _versjon 1 og 2_ p� samme k� fra 01.10.2022.
* Domstolen m� samtidig informere politiet om at versjon 1 har EOL 1.11.2022.
* Politiet kan da fortsette � behandle meldingene markert med _versjon 1_ helt til de f�r oppgradert sine systemer til � behandle meldinger merket med _versjon 2_
* Domstolen forplikter seg da til � sende meldinger p� versjon 1 og 2 minst frem til 1.11.2022 (eller til at politiet har informert om at de er p� _versjon 2_)

Det vi da oppn�r vi at b�de begge virksomhetene kan implementere oppgradering av kontrakten i takt med sin utrullings sekvens.
I teorien kan avsender v�re n�dt til � sende mange versjoner av den samme meldingen i en periode dersom der det er flere endringer over kort tid.

Med denne l�sningen g�r man fra � v�re en teknisk utfordring til en mer merkantil beslutning.


*Skisse*

![image info](./extra/rullendeoppgaderinger.png)

*Grace* Periode der flere versjoner av den samme meldingen sendes

*EOL Noitfy" N�r avsender informerer mottaker om at en gitt versjon ikke publiseres lenger 

*EOL* - N�r en gitt versjon ikke publiseres lenger

### Alternative l�sninger:
* Simultane oppgraderinger for alle brukere av JustisHub
* Avsender sender meldinger p� i alle verjoner i grace-perioden, men ikke p� samme k� (som beskrevet over), men p� _egne versjonerte k�er_ (Alts� �n k� per versjon)
* Mottaker av melding implementerer alltid oppgraderinger av meldinger f�rst. Slik at mottaker f.eks. kan behandle versjon 1 og 2, s� kan produsent sende versjon 1 i grace-perioden, men m� over til versjon 2 innen perioden er over.
* Andre forslag??


### FAQ
<Svar til vanlige sp�rsm�l stilt etter RFC til dette forslaget>

