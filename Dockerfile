ARG BASE_IMAGE="debian:10"
FROM ${BASE_IMAGE} AS v1_0

RUN apt-get update && apt-get install -y php collectd httping

EXPOSE 25826/udp

CMD ["collectd", "-f"]

FROM v1_0 AS latest
