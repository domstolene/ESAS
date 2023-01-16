# Validering-jwks

Her ligger jwks'er som representerer public-keys som kan brukes til å validere signering i meldigner sendt i Justishub.

Hver organisasjon skal legge til egne nøkler, unikt definert med en kid (Key-ID).

## Generering av jwk

```shell
openssl genrsa -out private.key 2048
openssl req -key private.key -new -x509 -days 365 -out certificate.crt
# Henter ut public-key fra sertifikat for å lage jwk med https://russelldavies.github.io/jwk-creator/
openssl x509 -in certificate.crt -pubkey -out public.pem
```
