FROM golang:latest

RUN mkdir -pv /app/bin
ADD . /app/
WORKDIR /app
RUN go get "github.com/labstack/echo"
RUN go build -o ./bin/main ./src/

CMD ["/app/bin/main"]
