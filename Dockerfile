FROM golang AS builder

WORKDIR /src/

RUN git clone --depth 1 --branch v3.4.0 https://github.com/gphotosuploader/gphotos-uploader-cli.git .

RUN go mod download -x

# static build to simplify multi stage
RUN go build -ldflags "-linkmode external -extldflags -static" -o gphotos-uploader-cli main.go

FROM alpine

COPY --from=builder /src/gphotos-uploader-cli /usr/local/bin/

COPY sync.sh /etc/periodic/15min/

ENTRYPOINT /usr/sbin/crond -f -l 8