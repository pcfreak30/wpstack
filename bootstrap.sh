#!/bin/bash

set -e

# Hack, entrypoint.sh calls apache, so we silently kill it and spawn out own in $@
/entrypoint.sh apache2

killall -9 apache2 &> /dev/null

# If HOST_UID is passed, change the permissions
if [ ! -z "$HOST_UID" ]; then
    usermod -u ${HOST_UID} www-data
    groupmod -g ${HOST_GID} www-data
    chown -R www-data:www-data .
fi

exec "$@"
