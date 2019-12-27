FROM alpine
RUN apk add lm_sensors
COPY push.sh /
CMD ["sensors", "--json"]
