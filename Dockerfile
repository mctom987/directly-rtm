FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2

VOLUME ["/var/log/apache2"]

# Expose ports
EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]