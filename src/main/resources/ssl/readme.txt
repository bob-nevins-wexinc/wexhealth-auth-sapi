# Generated using the commands below

#Generate Private Key and Public Cert Using OpenSSL
openssl req -newkey rsa:2048 -x509 -keyout cakey.pem -out cacert.pem -days 3650

#We need to convert the RAS format to PKCS12 using the following command:
openssl pkcs12 -export -in cacert.pem -inkey cakey.pem -out identity.p12 -name "selfsigned"

###import certificates into truststore
keytool -v -import -file OV_NetworkSolutionsOVServerCA2.crt  -alias networksolutions -keystore trusted-client-truststore.p12
keytool -v -import -file STAR.XYZ.COM.crt  -alias xyz -keystore trusted-client-truststore.p12

###generate private and public keys
openssl req -newkey rsa:2048 -nodes -keyout widgy-private.pem -x509 -days 3000 -out widgy-crt.pem -config widgy.cfg