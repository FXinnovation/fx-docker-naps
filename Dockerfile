FROM openresty/openresty:xenial

ENV PORT=8000 \
    REDIRECT_URI_PATH=login \
    DISCOVERY="https://example.com" \
    CLIENT_ID=foo \
    CLIENT_SECRET=bar \
    AUTHORIZATION_PARAMS="hd=\"example.com\"" \
    SCOPE="openid email profile" \
    LOGOUT_PATH="logout" \
    DOMAIN="example.com" \
    PROXY_PASS="example.com"

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ENTRYPOINT ["/entrypoint.sh"]

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="naps" \
      "org.label-schema.base-image.name"="docker.io/library/nginx" \
      "org.label-schema.base-image.version"="1.11.10-alpine" \
      "org.label-schema.description"="NGINX Auth Proxy SAML" \
      "org.label-schema.url"="https://nginx.org" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-naps" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.resty.version"=$RESTY_VERSION \
      "org.label-schema.applications.resty_ssl.version"=$RESTY_SSL_VERSION \
      "org.label-schema.applications.resty_pcre.version"=$RESTY_PCRE_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="docker run fxinnovation/naps:[TAG]"
