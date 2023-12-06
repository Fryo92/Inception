FROM debian:bullseye

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server mariadb-client -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/run.sh /run.sh

RUN chmod +x /run.sh


ENTRYPOINT ["/run.sh"]