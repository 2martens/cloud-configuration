#!/bin/sh

CERT_PATH="/etc/letsencrypt/live/api.2martens.de/fullchain.pem"
KEY_PATH="/etc/letsencrypt/live/api.2martens.de/privkey.pem"
NGINX_CONF="/etc/nginx/nginx.conf"

if [ -f "$CERT_PATH" ] && [ -f "$KEY_PATH" ]; then
  echo "✅ Real certificate found — starting full HTTPS Nginx"
else
  echo "⚠️ No certificate found — starting Nginx with self-signed TLS fallback"
  mkdir -p /etc/letsencrypt/live/api.2martens.de
  ln -sf /etc/nginx/ssl/selfsigned.crt /etc/letsencrypt/live/api.2martens.de/fullchain.pem
  ln -sf /etc/nginx/ssl/selfsigned.key /etc/letsencrypt/live/api.2martens.de/privkey.pem
fi

exec /docker-entrypoint.sh "$@
