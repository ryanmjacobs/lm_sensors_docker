FROM ubuntu:19.10
RUN apt-get update -y &&\
    DEBIAN_FRONTEND="noninteractive" apt-get install -y\
        lm-sensors postgresql-client sysstat\
        python python-pip
RUN pip install psutil=5.6.7
COPY push.sh /
CMD ["bash", "/push.sh"]
