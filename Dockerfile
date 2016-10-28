FROM alpine:3.4

ADD my.cnf /etc/mysql/my.cnf

RUN apk update && \
    apk add mariadb mysql-client && \
    mkdir -p /var/run/mysqld && \
    mkdir -p /var/lib/mysql-binlog && \
    mkdir -p /var/lock/subsys && \
    mkdir -p /var/log/mysql && \
    mkdir -p /run/mysqld && \
    chown mysql. /var/log/mysql && \
    chown mysql. /var/lib/mysql-binlog && \
    chown mysql. /run/mysqld && \
    chown mysql. /var/run/mysqld && \
    mysql_install_db && \
    rm -rf /var/cache/apk/*
    
EXPOSE 3306

CMD ["/usr/bin/mysqld_safe", "--defaults-file=/etc/mysql/my.cnf", "--pid-file=/var/run/mysqld/mysqld.pid", "--user=mysql"]