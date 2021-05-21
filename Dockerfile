FROM quay.io/rbreslow/steamcmd:slim

LABEL maintainer="Rocky Breslow <breslowrocky@gmail.com>"

USER root

# Install dependencies for Garry's Mod DS
RUN set -ex \
    && apt-get update && apt-get install -y libtinfo5:i386 --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

USER steam

# Download Garry's Mod DS with `steamcmd`
RUN set -ex \
    && /usr/games/steamcmd +login anonymous \
    +app_update 4020 \
    validate \
    +quit

# https://developer.valvesoftware.com/wiki/Source_Dedicated_Server#Connectivity 
EXPOSE 27015/tcp
EXPOSE 27015/udp
EXPOSE 27020/udp
EXPOSE 27005/udp
EXPOSE 26900/udp
EXPOSE 51840/udp

WORKDIR /var/lib/steam/.steam/steamapps/common/GarrysModDS/

ENTRYPOINT ["/var/lib/steam/.steam/steamapps/common/GarrysModDS/srcds_run"]
CMD ["-game garrysmod", \
    "-maxplayers 16", \
    "+gamemode sandbox", \
    "+map gm_flatgrass"]
