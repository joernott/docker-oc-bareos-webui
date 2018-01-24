FROM registry.ott-consult.de/oc/apache-php:7.1
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV WEBUI_VERSION=17.2.4 \
    GIT_COMMIT="" \
    IMAGE_HISTORY=" « jenkins-docker-oc-apache-php-8 «  declare -x OLDPWD declare -x PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin declare -x PHP_VERSION=71u declare -x PWD=/ declare -x SHLVL=1"

COPY src /

RUN /tmp/install/oc-bareos-webui.sh

EXPOSE 9000

ENTRYPOINT /entrypoint
