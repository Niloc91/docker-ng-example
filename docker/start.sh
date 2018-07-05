#!/usr/bin/env sh

##### Configmap script #####

set -e


SUPERVISORD_CONFIG_FILE="/etc/supervisord.conf"
NGINX_DOC_ROOT="/opt/app/dist"


ls -la $SUPERVISORD_CONFIG_FILE
ls -la $NGINX_DOC_ROOT



echo "start supervisor.d using config file: $SUPERVISORD_CONFIG_FILE"
/usr/bin/supervisord -n -c ${SUPERVISORD_CONFIG_FILE}


