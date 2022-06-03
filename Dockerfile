FROM ubuntu

RUN apt update -y\
&& apt install -y debian-keyring debian-archive-keyring apt-transport-https curl\
&& curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg\
&& curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-stable.list\
&& apt update -y\
&& apt install caddy -y

RUN echo ':$PORT {\
		reverse_proxy * ENV["host"] {\
			header_up Host {http.reverse_proxy.upstream.hostport}\
			header_up X-Forwarded-Host {host}\
		}\
}' >> /etc/caddy/Caddyfile
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
