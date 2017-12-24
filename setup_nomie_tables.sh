#!/bin/bash

HOST=http://localhost:5984

curl -X PUT $HOST/_config/httpd/enable_cors -d '"true"'
curl -X PUT $HOST/_config/cors/origins -d '"*"'
curl -X PUT $HOST/_config/cors/credentials -d '"true"'
curl -X PUT $HOST/_config/cors/methods -d '"GET, PUT, POST, HEAD, DELETE"'
curl -X PUT $HOST/_config/cors/headers -d '"accept, authorization, content-type, origin, referer, x-csrf-token"'
curl -X PUT $HOST/_config/httpd/bind_address -d '"0.0.0.0"'
curl -X PUT $HOST/nomie_events
curl -X PUT $HOST/nomie_meta
curl -X PUT $HOST/nomie_trackers
