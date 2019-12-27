FROM ubuntu:19.10
RUN apt-get update -y && apt-get install -y lm-sensors postgresql-contrib
COPY push.sh /
CMD ["bash", "/push.sh"]
