# Используем официальный образ MySQL 8.3
FROM mysql:8.3.0

# Устанавливаем переменные окружения для настройки MySQL
ENV MYSQL_ROOT_PASSWORD=zabbix
ENV MYSQL_DATABASE=zabbix
ENV MYSQL_USER=zabbix
ENV MYSQL_PASSWORD=zabbix

# Копируем SQL-скрипты в контейнер
COPY zabbix-sql-scripts/mysql/schema.sql /docker-entrypoint-initdb.d/
COPY zabbix-sql-scripts/mysql/images.sql /docker-entrypoint-initdb.d/
COPY zabbix-sql-scripts/mysql/data.sql /docker-entrypoint-initdb.d/

# Эти скрипты будут выполнены при инициализации базы данных
CMD ["mysqld"]