FROM mariadb:latest

ENV MARIADB_ROOT_PASSWORD=passwd1!2@3#
ENV MARIADB_DATABASE=dogcatalog
ENV MARIADB_USER=userf
ENV MARIADB_PASSWORD=passwd1!2@3#

COPY ./backup.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
