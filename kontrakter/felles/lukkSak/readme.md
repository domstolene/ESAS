# Lukk sak uten avgjørelse
Brukes for å lukke en sak uten at det er noen avgjørelse knyttet til saken.

## Headere forsendelse justisHub
SchemaName=LUKK_SAK \
SchemaVersion=1.1 \
[RFC](../../../rfc/MessageName-header.md)  

senderOrganization=KRIMINALOMSORGEN | POLITIET | DOMSTOLEN \
[RFC](../../../rfc/AvsenderVirksomhet-property.md)

# Bruk/beskrivelse
Denne meldingen skal brukes i forbindelse med lukking av saker der det ikke er noen avgjørelse.

For eksempel i tilfeller der man ser at det har blitt 'noe krøll' med saken og at man i stedet bare kjører hele saken på nytt med ny begjæring. 
Et annet eksempel kan være at at begjæringen har kommet som duplikat og man ønsker å bare lage avgjørelse kun på den ene.
Et tredje eksempel kan være at saken trekkes tilbake av påtalemyndigheten/siktet før avgjørelse er fattet.

