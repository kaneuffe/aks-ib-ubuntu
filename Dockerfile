FROM ubuntu:20.04 as debs

WORKDIR /opt/debs
USER root

FROM ubuntu:20.04

COPY --from=debs /opt/debs /opt/debs
COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


