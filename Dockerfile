ARG GOVERSION=1.9
FROM golang:${GOVERSION}-alpine

COPY . /go/src/github.com/cbrit/website

WORKDIR /go/src/github.com/cbrit/website
ADD VERSION .

EXPOSE 80

CMD ["go", "run", "server.go"]