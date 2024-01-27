USE zabbix;

INSERT INTO hosts (hostid, host, status, disable_until, available, lastaccess, maintenance_status, name, flags, templateid, description)
VALUES (1, 'zabbix_server', 0, 0, 1, 0, 0, 'Zabbix Server', 0, NULL, 'Zabbix Server');

