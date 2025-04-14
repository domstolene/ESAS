# Begjæring om kjennelse/beslutning 
Generell begjæring som i første omgang brukes til Begjæring om midlertidig tap av førerett fra politi til tingretten.
Er tenkt å skal brukes på andre tvangsmidler osv. i fremtiden.

## Headere forsendelse justisHub
SchemaName=BEGJAERING_KJENNELSE_BESLUTNING  
SchemaVersion=1.0  
senderOrganization=POLITIET  

[RFC](../../../rfc/MessageName-header.md)

### [Se changelog for endringer](./changelog.md)

## Avklaringer
- Skal aktor_møter være med?
- Vitner?
- det er domstolene som skal stille med tolk, valg av tolk er viktig.
- Under 18 gjerningstidspunkt
- Siktede personer/-foretak i samme liste

## Beskrivelse
Generell begjæring om kjennelse eller besluting fra påtale til domstolen 1. nivå tingretten.
Første versjon skal dekke: Begjæring om midlertidig tap av førerett, en siktet og en kjennelse med varighet/dato. 
### Fremtidige begjæringer
Eksempler på begjæring som skal dekkes:
* Begjæring om midlertidig tap av førerett, en siktet og en kjennelse med varighet/dato.
* Begjæring til retten om kjennelse for vilkår for DNA-prøvetaking
* Begjæring om beslutning av heftelse strpl § 247
* Begjæring om pågripelse (sjelden i bruk)
* Begjæring om bevisopptak / rettslik avhør
* Begjæring om fjernavhør av vitne/sakkyndig
* Begjæring om beslutning av heftelse
* Begjæring om beslutning om opprettholdelse av beslag
* Begjæring om besøksforbud
* Begjæring om OVA / Elektronisk kontroll
* Begjæring om kropslig undersøkelse
* Begjæring om ransaking
* Begjæring om ransaking 3. person (ikke siktet)
* ...
### Vitner/sakkyndige osv
Usikker på om det skal være med vitner på noen av rettsforhandlingen så de er ikke med i selve begjæringen.
De vil kun være med i listen over personer hvis f.eks. ransaking hos 3. part er et vitne.
### Personer og foretak
Det er som regel siktet som er den ene parten, men det kan også være en annen som ved ransaking av 3. person.
Det er forskjell på dato som vi har på siktede, vitner, fornærmede og sakkyndige så vi lager lister over personer som vi
refererer til.
Bruker begrepet part, som kan være tom f.eks. ved begjæring om inndraging av fiskeredskap (er det kanskje dom), dvs. vi har ukent gjerningsmann.
* Siktet kan være person eller foretak, se begjaeringDom.
* Fornærmede kan være person eller foretak, se begjaeringDom.
* Vitner er bare personer, se begjaeringDom.
* Sakkyndige vitner/personer er profersjonelle personer som vi ikke har annet enn navn på. 
* Tolk må være tilgjengelig for alle personer.

Meldinger som anke over kjennelse beslutning vil bli håndtert i egne meldinger.