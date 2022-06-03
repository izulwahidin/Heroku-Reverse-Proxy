FROM centos:7


RUN yum update -y
RUN yum install yum-plugin-copr -y
RUN yum copr enable @caddy/caddy -y
RUN yum install caddy -y

ADD Caddyfile /app/Caddyfile
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["bash","/app/entrypoint.sh"]
