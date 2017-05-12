#!/bin/bash

set -e

# Call entrypoint.sh
docker-entrypoint.sh "$@"

# If HOST_UID is passed, change the permissions
if [ ! -z "$HOST_UID" ]; then
    usermod -u ${HOST_UID} www-data
    groupmod -g ${HOST_GID} www-data
    chown -R www-data:www-data .
fi

exec "$@"
