FROM kong:2.6.0-alpine

COPY ./kong/kong.conf /etc/kong/

USER root

COPY ./kong/plugins/kong-plugin-auth-redis /custom-plugins/kong-plugin-auth-redis

WORKDIR /custom-plugins/kong-plugin-auth-redis

RUN luarocks install lua-resty-redis
RUN luarocks make

USER kong
