FROM centos:7

RUN yum update
RUN yum install yum-plugin-copr
RUN yum copr enable @caddy/caddy
RUN yum install caddy

ADD Caddyfile /app/Caddyfile
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["bash","/app/entrypoint.sh"]
