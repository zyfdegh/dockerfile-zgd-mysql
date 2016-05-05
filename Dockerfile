FROM mysql:5.6
MAINTAINER zyfdegg@gmail.com

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_USER root
ENV MYSQL_DATABASE health

COPY my.cnf /etc/mysql/my.cnf

COPY mysql_dump.sql /
COPY restore-data.sh /

VOLUME ["/root/mysql-data","/var/lib/mysql"]

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]

# RUN /restore-data.sh
