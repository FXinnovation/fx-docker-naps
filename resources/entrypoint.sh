#!/bin/sh
set -e -x

# Rendering template
confd -onetime -backend env

# Launch openresty
/usr/local/openresty/bin/openresty -g daemon off;
