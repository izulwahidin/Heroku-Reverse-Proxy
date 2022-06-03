FROM caddy

ADD Caddyfile /app/Caddyfile
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["sh","/app/entrypoint.sh"]
