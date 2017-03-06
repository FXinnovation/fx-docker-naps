FROM nginx:1.11.10-alpine

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

#ADD ./resources /resources

#RUN /resources/build && rm -rf /resources

# CMD [""]

# ENTRYPOINT ["entrypoint"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="naps" \
      "org.label-schema.base-image.name"="docker.io/library/nginx" \
      "org.label-schema.base-image.version"="1.11.10-alpine" \
      "org.label-schema.description"="NGINX Auth Proxy SAML" \
      "org.label-schema.url"="https://nginx.org" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-naps" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.nginx.version"=$NGINX_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"=""
