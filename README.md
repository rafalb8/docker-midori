# Midori browser in docker container 

Docker container running Midori browser with VNC server

## Usage

### docker cli

```bash
docker run -it --rm -p 5901:5901 ghcr.io/rafalb8/docker-midori:latest
```

### docker-compose

```yaml
version: "2.1"
services:
  midori:
    image: ghcr.io/rafalb8/docker-midori:latest
    restart: unless-stopped
    container_name: midori
    ports:
      - 5901:5901
```


### VNC access

The default VNC password is `password`
