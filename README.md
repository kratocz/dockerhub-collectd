# General info

Unofficial collectd Docker image.

# Docker Image Tags

## Format

```
<OS>
```

or: `latest` for debian

Note: `major` and `minor` determines the additional set of features, see:

https://github.com/kratocz/dockerhub-php/blob/main/Dockerfile

## Current Tags

- debian
- *-1, *-2, *-3, ... (e.g. 8.1-apache-1) has fixed set of additional packages (recommended).
- latest

# Installation and usage

Example usage in `docker-compose.yml`:

```
  collectd:
    image: krato/collectd
    ports:
      - 25826:25826/udp
    environment:
      - TZ=Europe/Prague
    volumes:
      - ./collectd/rrd:/var/lib/collectd/rrd
      - ./collectd/csv:/var/lib/collectd/csv
      - ./collectd/collectd.conf.d:/etc/collectd/collectd.conf.d:ro
    restart: unless-stopped
```

