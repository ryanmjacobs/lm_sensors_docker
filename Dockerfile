FROM alpine
RUN apk add lm_sensors
CMD ["sensors", "--json"]
