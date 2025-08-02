FROM alpine AS cert-builder

RUN apk add --no-cache openssl

# Generate certs during build
RUN mkdir -p /tmp/ssl && \
    openssl req -x509 -nodes -days 365 \
      -newkey rsa:2048 \
      -keyout /tmp/ssl/selfsigned.key \
      -out /tmp/ssl/selfsigned.crt \
      -subj "/CN=localhost"

FROM nginx:mainline-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY paths-enabled /etc/nginx/paths-enabled.d
COPY certificates-available /etc/nginx/certificates-available.d
RUN mkdir -p /etc/nginx/certificates-enabled.d

COPY --from=cert-builder /tmp/ssl/selfsigned.crt /etc/nginx/ssl/selfsigned.crt
COPY --from=cert-builder /tmp/ssl/selfsigned.key /etc/nginx/ssl/selfsigned.key

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
