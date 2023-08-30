FROM alpine:latest
ENV LANG C.UTF-8
WORKDIR /
EXPOSE 8081
RUN apk update 
RUN apk upgrade
RUN apk add --no-cache libc6-compat
RUN apk add --no-cache jq
RUN apk add --no-cache wget
RUN apk add --no-cache nano
RUN wget -O /usr/local/bin/infinitive https://github.com/acd/infinitive/releases/download/v0.2/infinitive.amd64
RUN chmod 777 /usr/local/bin/infinitive
CMD infinitive
