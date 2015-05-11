FROM java:8-jre
MAINTAINER Xu Fan <drowterran@gmail.com>

# install
WORKDIR /elasticmq
RUN wget https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.8.8.jar -O elasticmq-server.jar
COPY custom.conf /elasticmq/custom.conf

# run
ENTRYPOINT ["java", "-Dconfig.file=/elasticmq/custom.conf", "-jar", "/elasticmq/elasticmq-server.jar"]
EXPOSE 80
