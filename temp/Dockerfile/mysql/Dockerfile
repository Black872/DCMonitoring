# Используем официальный образ MySQL 8.3
FROM mysql:8.3.0

# Устанавливаем переменные окружения для настройки MySQL
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=zabbix
ENV MYSQL_USER=zabbix
ENV MYSQL_PASSWORD=zabbix

# Копируем SQL-скрипты в контейнер

COPY zabbix-sql-scripts/mysql/schema.sql /docker-entrypoint-initdb.d/
COPY zabbix-sql-scripts/mysql/create.sql /docker-entrypoint-initdb.d/
COPY zabbix-sql-scripts/mysql/data.sql /docker-entrypoint-initdb.d/






HEALTHCHECK --interval=5s --timeout=3s \
    CMD mysqladmin ping -uroot -p$MYSQL_ROOT_PASSWORD || exit 1

# Эти скрипты будут выполнены при инициализации базы данных
CMD ["mysqld", "--daemonize"]

