FROM mysql:8.3.0


RUN /etc/init.d/mysql start && \
    mysql -uroot -p$MYSQL_ROOT_PASSWORD && \
    create database zabbix character set utf8mb4 collate utf8mb4_bin && \
    create user zabbix@localhost identified by 'password' && \
    grant all privileges on zabbix.* to zabbix@localhost && \
    set global log_bin_trust_function_creators = 1; && \
    quit

RUN zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p zabbix 
RUN /etc/init.d/mysql start && \
    mysql -uroot -p$MYSQL_ROOT_PASSWORD && \
    set global log_bin_trust_function_creators = 0 && \
    quit
