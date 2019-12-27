FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y lm_sensors
COPY push.sh /
CMD ["sensors", "--json"]
