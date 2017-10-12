#! /usr/bin/bash

docker run -d --name plex --network=host -e TZ=America/New_York -e PLEX_CLAIM= -e PLEX_UID=1001 -e PLEX_GID=1001 -v /srv/NAS/Containers/plex/config:/config -v /srv/NAS/Containers/plex/transcode:/transcode -v /srv/NAS/Containers/plex/data:/data --restart=unless-stopped plexinc/pms-docker:plexpass
