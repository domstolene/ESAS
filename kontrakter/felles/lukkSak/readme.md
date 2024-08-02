# Lukk sak uten avgjørelse - ikke i produksjon
Versjon 1.0 er første versjon som vi skal i produksjon med som en del av tilståelsessaker.

## Headere forsendelse justisHub
SchemaName=LUKK_SKJEMA \
SchemaVersion=arbeidsversjon \
[RFC](../../../rfc/MessageName-header.md)  

senderOrganization=KRIMINALOMSORGEN|POLITIET|DOMSTOLEN \
[RFC](../../../rfc/AvsenderVirksomhet-property.md)

# Bruk/beskrivelse
Denne meldingen skal brukes i forbindelse med lukking av saker der det ikke er noen avgjørelse.

For eksempel i tilfeller der man ser at det har blitt 'noe krøll' med saken og at man i stedet bare kjører hele saken på nytt med ny begjæring. 
Et annet eksempel kan være at at begjæringen har kommet som duplikat og man ønsker å bare lage avgjørelse kun på den ene.

