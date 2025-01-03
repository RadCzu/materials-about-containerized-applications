# 1: Build the binary
FROM golang:alpine AS builder

WORKDIR /usr/src/app

COPY ./ ./ 

RUN go build -o server .


FROM scratch

# Copy only the binary from the builder stage
COPY --from=builder /usr/src/app/server /server

ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

EXPOSE 8080

CMD ["/server"]