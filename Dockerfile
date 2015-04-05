FROM java:jre
MAINTAINER Xu Fan <drowterran@gmail.com>

# install
ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.8.4.jar /elasticmq/elasticmq-server.jar
ADD custom.conf /elasticmq/custom.conf

# run
ENTRYPOINT ["java", "-Dconfig.file=/elasticmq/custom.conf", "-jar", "/elasticmq/elasticmq-server.jar"]
EXPOSE 80
