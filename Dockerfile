FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install lm-sensors
CMD ["sensors", "--json"]
