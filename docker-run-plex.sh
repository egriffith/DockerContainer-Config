#! /usr/bin/bash

docker run -d --name plex --network=host -e TZ=America/New_York -e PLEX_UID=992 -e PLEX_GID=1004 -v plex_config:/config -v plex_transcode:/transcode -v plex_media:/data:ro --restart=unless-stopped plexinc/pms-docker:plexpass
