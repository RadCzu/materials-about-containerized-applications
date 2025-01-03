FROM golang:alpine

WORKDIR /usr/src/app

COPY ./ ./
RUN go build -o server

# Change User
RUN apk add --no-cache bash
RUN adduser -D appuser
USER appuser

ENV PORT=8080

ENV REQUEST_ORIGIN=https://example.com

EXPOSE 8080

CMD ["./server"]
