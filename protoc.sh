#!/usr/bin/env bash
rm $GOPATH/src/github.com/wuyuanyi135/mvprotos -r
for service in ./*/
do
protoc \
    --go_out=plugins=grpc:$GOPATH/src \
    -I ./mvcgi \
    -I ./mvpulse \
    -I ./mvcam \
    ./`basename $service`/*.proto
done