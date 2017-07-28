#!/bin/sh
set -e -x

# Fetching host nameserver
export NAMESERVER=$(cat /etc/resolv.conf | grep nameserver | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")

# Rendering template
confd -onetime -backend env

# Launch openresty
/usr/local/openresty/bin/openresty -g "daemon off;"
