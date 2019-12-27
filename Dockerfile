FROM ubuntu:19.10
RUN apt-get -y update
RUN apt-get -y install lm-sensors
CMD ["sensors", "--json"]
