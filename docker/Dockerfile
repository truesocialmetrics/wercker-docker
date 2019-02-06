FROM ubuntu:18.04

MAINTAINER Rostislav Mykhajliw <necromant2005@gmail.com>

# base
RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    curl \
    software-properties-common \
    ca-certificates


# php
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
# RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 14AA40EC0831756756D7F66C4F4EA0AAE5267A6C
RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    php7.2-cli \
    && echo 'date.timezone = UTC' >> /tmp/default.ini \
    && echo 'short_open_tag = ON' >> /tmp/default.ini \
    && echo 'memory_limit = -1' >> /tmp/default.ini \
    && echo 'expose_php = Off' >> /tmp/default.ini \
    && echo 'always_populate_raw_post_data = -1' >> /tmp/default.ini \
    && echo 'intl.default_locale = en_US' >> /tmp/default.ini \
    && mv /tmp/default.ini /etc/php/7.2/mods-available/default.ini \
    && ln -s /etc/php/7.2/mods-available/default.ini /etc/php/7.2/cli/conf.d/default.ini

# docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
RUN apt-get update && apt-get install -y docker-ce

COPY run.php /mnt/run.php

CMD ["/bin/bash"]
