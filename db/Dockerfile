FROM mariadb:11.5

ENV MYSQL_ROOT_PASSWD=123
ENV MYSQL_DATABASE=dogcatalog
ENV MYSQL_USER=userf
ENV MYSQL_PASSWORD=passwd

COPY db/backup.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
