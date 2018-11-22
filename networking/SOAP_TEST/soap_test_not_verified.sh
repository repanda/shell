#!/bin/sh

SOAP_USER='myusername'
PASSWORD='mypassword'
AUTHENTICATION="$SOAP_USER:$PASSWORD"
URL='http://redpanda:8080/UploadBatchFile/UploadBatchFile'
SOAPFILE=soap_file.xml
TIMEOUT=5

curl --user "${AUTHENTICATION}" --header 'Content-Type: text/xml;charset=UTF-8' --data @"${SOAPFILE}" "${URL}" --connect-timeout $TIMEOUT
