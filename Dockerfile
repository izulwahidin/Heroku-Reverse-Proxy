FROM centos:8
RUN dnf install 'dnf-command(copr)' \
    dnf copr enable @caddy/caddy \
    dnf install caddy

ADD Caddyfile /app/Caddyfile
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["bash","/app/entrypoint.sh"]
