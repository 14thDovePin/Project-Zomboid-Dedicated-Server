# syntax=docker/dockerfile:1

FROM cm2network/steamcmd:steam-bookworm

# Environment Variables
ENV servername="servertest"

# Document Ports

# Dedicated Server Ports
EXPOSE 16261/udp
EXPOSE 16262/udp

COPY container-script.sh /container-script.sh
COPY entrypoint.sh /entrypoint.sh

WORKDIR /home/steam/server-files

USER root

RUN /bin/bash /container-script.sh
RUN chown steam:steam /entrypoint.sh
RUN chmod 700 /entrypoint.sh
RUN rm /container-script.sh
RUN rm -rf /var/lib/apt/lists/*

# Set final user here.
USER steam

ENTRYPOINT [ "/entrypoint.sh" ]