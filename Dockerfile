FROM golang:1.19-alpine

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o urlwalk .
RUN chmod a+x ./urlwalk
ENTRYPOINT ["/app/urlwalk"]