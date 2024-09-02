FROM mariadb:latest

ENV MYSQL_ROOT_PASSWORD=passwd1!2@3#
ENV MYSQL_DATABASE=dogcatalog

COPY ./backup.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
