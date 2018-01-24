# Docker image: Bareos Web UI on CentOS 7 with PHP-FPM from IUS
This image starts the bareos web-ui

Options to php-fpm can be passed by setting the PHP_OPTIONS variable

## Usage:
### Simple usage
```
docker run -d -p 9000:9000 \
    registry.ott-consult.de/oc/bareos-webui:latest
```

### Complete example
```
docker run -d -p 9000:9000 \
    -e PHP_OPTIONS='-d date.timezone = "Europe/Berlin"'
    -v /data/phpapp/etc/php-fpm.d/www.conf:/etc/php-fpm.d/www.conf \
    -v /data/phpapp/php:/php \
    registry.ott-consult.de/oc/bareos-webui:latest
```
