USE zabbix;
CREATE TABLE IF NOT EXISTS hosts (
    hostid      bigint  unsigned            NOT NULL,
    proxy_hostid    bigint  unsigned            DEFAULT NULL,
    host        varchar(100)           NOT NULL,
    status      int             NOT NULL,
    disable_until   int             NOT NULL,
    error       varchar(2048) DEFAULT NULL,
    available   int             NOT NULL,
    lastaccess  int             NOT NULL,
    ipmi_authtype   int             NOT NULL,
    ipmi_privilege  int             NOT NULL,
    ipmi_username   varchar(16)            DEFAULT NULL,
    ipmi_password   varchar(20)            DEFAULT NULL,
    ipmi_disable_until int             NOT NULL,
    ipmi_available  int             NOT NULL,
    snmp_disable_until int             NOT NULL,
    snmp_available  int             NOT NULL,
    maintenanceid   bigint  unsigned            DEFAULT NULL,
    maintenance_status int             NOT NULL,
    maintenance_type int             NOT NULL,
    maintenance_from int             NOT NULL,
    ipmi_errors     int             NOT NULL,
    snmp_errors     int             NOT NULL,
    jmx_errors      int             NOT NULL,
    name        varchar(100)           NOT NULL,
    flags       int             NOT NULL,
    templateid  bigint  unsigned            DEFAULT NULL,
    description     text            NOT NULL,
    primary key (hostid)
);