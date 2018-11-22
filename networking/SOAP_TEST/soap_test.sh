#!/bin/sh

curl -H "Content-Type: text/xml; charset=utf-8" -H "SOAPAction:"  -d @soap_file.xml -X POST http://redpanda:8080/UploadBatchFile/UploadBatchFile