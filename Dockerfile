FROM golang:alpine

RUN apk add git make

RUN go get github.com/gojp/goreportcard && \
    go get github.com/gojp/goreportcard/cmd/goreportcard-cli && \
    cd $GOPATH/src/github.com/gojp/goreportcard && make install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
