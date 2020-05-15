FROM golang:1.14-alpine as build

WORKDIR /app
COPY go.* ./
RUN go mod download
COPY . .
RUN go build -o bin/language-interpreter ./main.go

FROM alpine
WORKDIR /app/bin
COPY --from=build /app/bin .

ENTRYPOINT ["/app/bin/language-interpreter"]