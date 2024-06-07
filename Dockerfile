# Using golang version 1.22.3 
FROM golang:1.22.4-bookworm

WORKDIR /app

COPY go.mod go.sum main.go ./

RUN go mod download

COPY . .

RUN go build -o main .

EXPOSE 8081

CMD ["./main"]