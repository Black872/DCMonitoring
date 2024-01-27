INSERT INTO hosts (hostid, host, status, disable_until, available, lastaccess, maintenance_status, name, flags, templateid, description)
VALUES (1, 'Zabbix Server', 0, 0, 1, 0, 0, 'Zabbix Server', 0, NULL, 'Zabbix Server');

INSERT INTO images (imageid, imagetype, image)
VALUES (1, 1, 'base64_encoded_image_data');
