FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=passwd1!2@3#
ENV MYSQL_DATABASE=dogcatalog
ENV MYSQL_USER=userf
ENV MYSQL_PASSWORD=passwd1!2@3#

COPY ./backup.sql /docker-entrypoint-initdb.d/


EXPOSE 3306

CMD ["mysqld"]
