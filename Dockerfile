# Is the same as `$ docker image pull centos`
FROM centos:latest

MAINTAINER Zeev Lazarev "zlazarev@gmail.com"

WORKDIR /usr/local/bin

# The `.` means WORKDIR
COPY chapter6/test-program.jar .

# Is the same as executing commands inside of container's terminal after `$ docker container run -it centos`
RUN yum -y update && yum install -y java-11-openjdk

# Tells the docker to run automatic command in the container. In this case run the java program installed in /usr/local/bin.
ENTRYPOINT ["java", "-jar", "test-program.jar"]
