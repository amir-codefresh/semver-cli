FROM golang:1.11-alpine as go

RUN apk add --update ca-certificates git 

RUN go get github.com/davidrjonas/semver-cli

FROM alpine:3.8

COPY --from=go /go/bin/semver-cli /usr/local/bin/semver-cli
