FROM golang:alpine

RUN apk --no-cache add git make && rm -rf /var/lib/apt/lists/*

RUN go get github.com/gojp/goreportcard && \
    go get github.com/gojp/goreportcard/cmd/goreportcard-cli && \
    cd $GOPATH/src/github.com/gojp/goreportcard && make install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
