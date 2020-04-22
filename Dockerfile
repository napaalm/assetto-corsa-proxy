FROM ubuntu:18.04
MAINTAINER Antonio Napolitano "nap@antonionapolitano.eu"
COPY . /srv/acproxy
RUN /srv/acproxy/install-docker.sh
ENV server set-ac-server-address-here.com
CMD ["sh", "-c", "/srv/acproxy/acproxy ${server}"]
EXPOSE 8081/tcp
EXPOSE 9600/tcp
EXPOSE 9600/udp
