#!/bin/sh

CERT_PATH="/etc/letsencrypt/live/api.2martens.de/fullchain.pem"
KEY_PATH="/etc/letsencrypt/live/api.2martens.de/privkey.pem"
NGINX_CONF="/etc/nginx/nginx.conf"

if [ -f "$CERT_PATH" ] && [ -f "$KEY_PATH" ]; then
  echo "✅ Real certificate found — starting full HTTPS Nginx"
  cp -f /etc/nginx/certificates-available.d/letsencrypt.conf /etc/nginx/certificates-enabled.d/certificates.conf
else
  echo "⚠️ No certificate found — starting Nginx with self-signed TLS fallback"
  cp -f /etc/nginx/certificates-available.d/selfsigned.conf /etc/nginx/certificates-enabled.d/certificates.conf
fi

exec /docker-entrypoint.sh "$@"
