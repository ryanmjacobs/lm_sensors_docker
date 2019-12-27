FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y lm-sensors
COPY push.sh /
CMD ["bash", "/push.sh"]
