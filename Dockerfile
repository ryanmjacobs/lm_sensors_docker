FROM ubuntu:19.10
RUN apt-get update -y &&\
    DEBIAN_FRONTEND="noninteractive" apt-get install -y lm-sensors postgresql-client
COPY push.sh /
CMD ["bash", "/push.sh"]
