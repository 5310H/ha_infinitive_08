FROM alpine:latest
ENV LANG C.UTF-8
#RUN mkdir /usr/local/infinitive
WORKDIR /
EXPOSE 8081
RUN apk update 
RUN apk upgrade
RUN apk add --no-cache libc6-compat
RUN apk add --no-cache jq
RUN apk add --no-cache wget
RUN wget -O /usr/local/bin/infinitive https://github.com/acd/infinitive/releases/download/v0.2/infinitive.amd64
#COPY data/infinitive.amd64 infinitive.bin
#COPY data/run.sh /usr/local/bin/infinitive.sh
RUN chmod 777 /usr/local/bin/infinitive
#RUN chmod 777 //usr/local/bin/infinitive.sh
CMD infinitive
#CMD ["infinitive -httpport=8081 serial=/dev/ttyUSB0 mode=debug"]
#CMD infinitive --httpport=8080 --serial=/dev/tty/ttyUSB0