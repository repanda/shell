#!/bin/sh

SOAP_USER='myusername'
PASSWORD='mypassword'
AUTHENTICATION="$SOAP_USER:$PASSWORD"
URL='http://redpanda:8080/UploadBatchFile/UploadBatchFile'
SOAPFILE=soap_file.xml
TIMEOUT=5

curl --user "${AUTHENTICATION}" --header 'Content-Type: text/xml;charset=UTF-8' --data @"${SOAPFILE}" "${URL}" --connect-timeout $TIMEOUT

#or 

http_code=$(curl --write-out "%{http_code}\n" --silent --user "${AUTHENTICATION}" --header 'Content-Type: text/xml;charset=UTF-8' --data @"${SOAPFILE}" "${URL}" --connect-timeout $TIMEOUT --output /dev/null)
if [[ $http_code -gt 400 ]];  # 400 and 500 Client and Server Error codes http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
then
echo "Error: HTTP response ($http_code) getting URL: $URL"
echo "Please verify parameters/backend. Username: $USER Password: $PASSWORD Press any key to continue..."
read entervalue || continue
fi
