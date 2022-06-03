FROM ubuntu
RUN apt update \
apt install curl -y \
curl -sS https://webinstall.dev/caddy

ADD Caddyfile /app/Caddyfile
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["sh","/app/entrypoint.sh"]
