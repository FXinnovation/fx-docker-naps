# naps
[![](https://images.microbadger.com/badges/version/fxinnovation/naps.svg)](https://microbadger.com/images/fxinnovation/naps "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/fxinnovation/naps.svg)](https://microbadger.com/images/fxinnovation/naps "Get your own image badge on microbadger.com")
## Description
This image contains naps (NGINX auth proxy system). It provides an easy way to create an openid connect auth proxy.

## Tags
We do NOT push a `latest` tag for this image. You should always pin a specific version for it.
We do not follow the aws-es-proxy release tags in the docker image tags. You can always find the aws-es-proxy version in the Dockerfile that was used to create the image or you can use the labels.

### *Note*
We do publish a `master` tag which is based on the master branch. This should only be used for testing purposes and never for actual deployments.

## Usage
```docker run --rm -e [KEY]=[VALUE] -p [PORT]:[PORT] fxinnovation/naps:[TAG]```

Here is the list of key that can be set:

| Key | Default Value | Type |
|-----|:-------------:|:----:|
| PORT | 8000 | String |
| SESSION_SECRET | pleasechangemebecausethisisimportant | String |
| WORKER_CONNECTIONS | 128 | String |
| RESOLVER | host | String "host" of an IP address |
| OIC_REDIRECT_URI_PATH | login | String |
| OIC_DISCOVERY | https://example.com | String |
| OIC_CLIENT_ID | foo | String |
| OIC_CLIENT_SECRET | bar | String |
| OIC_AUTHORIZATION_PARAMS | hd=\"example.com\" | String |
| OIC_SCOPE | openid email profile | String |
| OIC_REDIRECT_URI_SCHEME | https | String |
| OIC_LOGOUT_PATH | logout | String |
| OIC_REDIRECT_AFTER_LOGOUT_URI | "/" | String |
| OIC_USER_HEADER | "X-USER" | String |
| OIC_DOMAIN | example.com | String |
| PROXY_PASS | example.com | String |
| SESSION_STORAGE | nil | "cookie" or "redis" |
| SESSION_REDIS_PREFIX | nil | String |
| SESSION_REDIS_SOCKET | nil | String |
| SESSION_REDIS_HOST | nil | String |
| SESSION_REDIS_PORT | nil | String |
| SESSION_REDIS_AUTH | nil | String |
| SESSION_REDIS_USELOCKING | nil | String |
| SESSION_REDIS_SPINLOCKWAIT | nil | String |
| SESSION_REDIS_MAXLOCKWAIT | nil | String |
| SESSION_REDIS_POOL_TIMEOUT | nil | String |
| SESSION_REDIS_POOL_SIZE | nil | String |

## Labels
We set labels on our images with additional information on the image. we follow the guidelines defined at http://label-schema.org/. Visit their website for more information about those labels.

## Comments & Issues
If you have comments or detect an issue, please be advised we don't check the docker hub comments. You can always contact us through the repository.
