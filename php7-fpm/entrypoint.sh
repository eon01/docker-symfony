#!/usr/bin/env bash
set -e

cd /var/www/symfony
mkdir -p var

ls -lrth

HTTPDUSER=$(ps axo user,comm | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1)

setfacl -R -m u:"$HTTPDUSER":rwX -m u:$(whoami):rwX var

setfacl -dR -m u:"$HTTPDUSER":rwX -m u:$(whoami):rwX var

tail -f /dev/null

exec "$@"

