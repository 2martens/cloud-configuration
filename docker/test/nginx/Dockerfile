FROM nginx:mainline-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY paths-enabled /etc/nginx/paths-enabled.d

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 \
      -newkey rsa:2048 \
      -subj "/CN=localhost" \
      -keyout /etc/nginx/ssl/selfsigned.key \
      -out /etc/nginx/ssl/selfsigned.crt \
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]