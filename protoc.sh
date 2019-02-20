#!/usr/bin/env bash
for service in ./*/
do
protoc \
    --go_out=plugins=grpc:$GOPATH/src \
    -I ./mvcgi \
    -I ./mvcamctrl \
    -I ./mvcam \
    ./`basename $service`/*.proto
done