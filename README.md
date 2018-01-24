# Docker image: Bareos Web UI on CentOS 7 with Apache and PHP 7.1 from IUS
This image starts the bareos web-ui. You need to override the /etc/bareos-webui
directory with your own, containing meaningful settings.

## Usage:
### Simple usage
```
docker run -d -p 80:80 \
    registry.ott-consult.de/oc/bareos-webui:latest
```

### Complete example
```
docker run -d -p 80:80 \
    -v /data/bareos-webui/etc/bareos-webui:/etc/bareos-webui \
    registry.ott-consult.de/oc/bareos-webui:latest
```
