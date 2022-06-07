#! /bin/bash

touch ./system.properties mdpsecurity.properties mdpgateway.properties mdpauth.properties mdpsettings.properties mdpmeta.properties mdpusers.properties mdproles.properties mdpdepartments.properties \
mdpemployee.properties front-ms-adminconsole.properties mdpnginx.properties qftsfnsdepintfa.properties qftsfnsdepintwaittran.properties;

echo "Enter database type:"
read db_type
echo "Enter database port:"
read db_port
echo "Enter hostname:"
read db_host
echo "Enter database name:"
read db_name
echo "Enter admin login:"
read admin_login
echo "Enter admin password:"
read admin_pass
echo "Enter shemas password:"
read shema_pass
echo "Enter prefix(with - ):"
read prefix

# system.properties
  echo  "AUTH_SERVER_CONTEXT=mdpauth">>system.properties;
  echo  "AUTHORIZATION_CONFIG_PATH=/share/config">>system.properties;
  echo  "AUTH_SERVER_URL=http://"$prefix"mdpauth:8080">>system.properties;
  echo  "AUTH_PROVIDER=digitalq">>system.properties;
  echo  "DEFAULT_BINDER=kafka">>system.properties;
  echo  "GUEST_PROJECT=systemFAB">>system.properties;
  echo  "HAZELCAST_ENABLE=false">>system.properties;
  echo  "KAFKA_HOST=qkafka-0.logging">>system.properties;
  echo  "KAFKA_PORT=9092">>system.properties;
  echo  "KAFKA_URL=qkafka-0.logging:9092">>system.properties;
  echo  "KUBERNETES_API_HOST=https://kubernetes.default.svc.cluster.local">>system.properties;
  echo  "KUBERNETES_APP_LABEL_NAME=app">>system.properties;
  echo  "KUBERNETES_URL=https://10.96.0.1">>system.properties;
  echo  "MAXEXECDB=999">>system.properties;
  echo  "MAX_CON=10">>system.properties;
  echo  "DISCOVERY_CLIENT_NAME=eureka">>system.properties;
  echo  "DB_TYPE=mssql">>system.properties;
  echo  "DB_DRIVER=com.microsoft.sqlserver.jdbc.SQLServerDriver">>system.properties;
  echo  "DB_PORT="$db_port>>system.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>system.properties;
  echo  "DB_HOST="$db_host>>system.properties;
  echo  "DB_DATABASE="$db_name>>system.properties;
  echo  "DB_ADMIN="$admin_login>>system.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>system.properties;
  echo  "JPA_DIALECT=org.sqlsqerver.SQL2012">>system.properties;
  echo  "DEFAULT_BINDER=kafka">>system.properties;
  echo  "DB_TEST_QUERY=select 1">>system.properties;
  echo  "EUREKA_CLIENT_ENABLED=false">>system.properties;
  echo  "EUREKA_INSTANCE_HOSTNAME="$prefix"ftdiscovery">>system.properties;
  echo  "EUREKA_INSTANCE_PORT=8761">>system.properties;
  echo  "EUREKA_PREFEREDIP_ENABLED=true">>system.properties;
  echo  "EUREKA_URL=http://ftdiscovery:8761/eureka/">>system.properties;
  echo  "MDPSECURITY_DB_LOGIN=mdpsecurity">>system.properties;
  echo  "MDPSECURITY_DB_PASSWORD="$schema_pass>>system.properties;
  echo  "MDPSECURITY_DB_DATABASE="$db_host>>system.properties;
  echo  "MDPSECURITY_DB_DRIVER=com.microsoft.sqlserver.jdbc.SQLServerDriver">>system.properties;
  echo  "MDPSECURITY_DB_SCHEMA=mdpsecurity">>system.properties;
  echo  "MDPSECURITY_DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>system.properties;
  echo  "MIN_CON=1">>system.properties;
  echo  "PLATFORM_DB=PLATFORM">>system.properties;
  echo  "PROBE_API=/actuator/info">>system.properties;
  echo  "PROBE_TYPE=tcp">>system.properties;
  echo  "REPORT_OUTPUT=/share/flextera/report">>system.properties;
  echo  "SERVICE_DISCOVERY_PORT=8761">>system.properties;
  echo  "SERVICE_PORT=8080">>system.properties;
  echo  "TRACER_ENABLE=true">>system.properties;
  echo  "TRACER_HOST=qtracer.logging">>system.properties;
  echo  "TRACER_PORT=9411">>system.properties;
  echo  "UPLOAD_PATH=/share/flextera/upload/">>system.properties;
  echo  "USE_AUDIT=false">>system.properties;
  echo  "OAUTH2_CLIENT_ID=client">>system.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>system.properties;
  echo  "ALLOW_ALL_FOR_DEBUG=false">>system.properties;
  echo  "RABBIT_PORT=10092">>system.properties

# mdpsecurity.properties
  echo  "DB_LOGIN=mdpsecurity">>mdpsecurity.properties;
  echo  "DB_PASSWORD="$shema_pass>>mdpsecurity.properties;
  echo  "DB_SHEMA=mdpsecurity">>mdpsecurity.properties;
  echo  "DB_ADMIN="$admin_login>>mdpsecurity.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>mdpsecurity.properties;
  echo  "DB_DATABASE="$db_name>>mdpsecurity.properties;
  echo  "DB_HOST="$db_host>>mdpsecurity.properties;
  echo  "DB_PORT="$db_port>>mdpsecurity.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdpsecurity.properties;
  echo  "DEFAULT_BINDER=kafka">>mdpsecurity.properties

# mdpgateway.properties
  echo  "ALLOW_ALL_FOR_DEBUG=false">>mdpgateway.properties;
  echo  "CACHE_TIME_LIVE_MIN=0">>mdpgateway.properties;
  echo  "COUNT_TRAFFIC_TIME_MIN=1">>mdpgateway.properties;
  echo  "DISCOVERY_LOCATOR_ENABLED=true">>mdpgateway.properties;
  echo  "GATEWAY_CONNECT_TIMEOUT=30000">>mdpgateway.properties;
  echo  "GATEWAY_PORT=8080">>mdpgateway.properties;
  echo  "GATEWAY_RESPONCE_TIMEOUT=30000">>mdpgateway.properties;
  echo  "LOGGING_HIBERNATE_LEVEL=INFO">>mdpgateway.properties;
  echo  "LOGGING_ROOT_LEVEL=INFO">>mdpgateway.properties;
  echo  "OAUTH2_CLIENT_ID=client">>mdpgateway.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>mdpgateway.properties;
  echo  "RULE_LIST_DIR=/share/config">>mdpgateway.properties;
  echo  "RULE_LIST_NAME=rulelist">>mdpgateway.properties;
  echo  "USE_CONFIG_SERVER=false">>mdpgateway.properties;
  echo  "KUBERNETES_APP_LABEL_NAME=app">>mdpgateway.properties;
  echo  "DEFAULT_BINDER=kafka">>mdpgateway.properties

# mdpauth.properties
  echo  "DB_LOGIN=mdpauth">>mdpauth.properties;
  echo  "DB_PASSWORD="$shema_pass>>mdpauth.properties;
  echo  "DB_SHEMA=mdpauth">>mdpauth.properties;
  echo  "DB_ADMIN="$admin_login>>mdpauth.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>mdpauth.properties;
  echo  "DB_DATABASE="$db_name>>mdpauth.properties;
  echo  "DB_HOST="$db_host>>mdpauth.properties;
  echo  "DB_PORT="$db_port>>mdpauth.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdpauth.properties;
  echo  "OAUTH2_CLIENT_ID=client">>mdpauth.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>mdpauth.properties;
  echo  "DEFAULT_BINDER=kafka">>mdpauth.properties

# mdpsettings.properties
  echo "DB_LOGIN=mdpsettings">>mdpsettings.properties;
  echo "DB_PASSWORD="$shema_pass>>mdpsettings.properties;
  echo "DB_SHEMA=mdpsettings">>mdpsettings.properties;
  echo "DB_ADMIN="$admin_login>>mdpsettings.properties;
  echo "DB_ADMINPASSSWORD="$admin_pass>>mdpsettings.properties;
  echo "DB_DATABASE="$db_name>>mdpsettings.properties;
  echo "DB_HOST="$db_host>>mdpsettings.properties;
  echo "DB_PORT="$db_port>>mdpsettings.properties;
  echo "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdpsettings.properties;
  echo "OAUTH2_CLIENT_ID=client">>mdpsettings.properties;
  echo "OAUTH2_CLIENT_SECRET=secret">>mdpsettings.properties;
  echo "DEFAULT_BINDER=kafka">>mdpsettings.properties

# mdpmeta.properties
  echo  "DB_LOGIN=mdpmeta">>mdpmeta.properties;
  echo  "DB_PASSWORD="$shema_pass>>mdpmeta.properties;
  echo  "DB_SHEMA=mdpmeta">>mdpmeta.properties;
  echo  "DB_ADMIN="$admin_login>>mdpmeta.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>mdpmeta.properties;
  echo  "DB_DATABASE="$db_name>>mdpmeta.properties;
  echo  "DB_HOST="$db_host>>mdpmeta.properties;
  echo  "DB_PORT="$db_port>>mdpmeta.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdpmeta.properties;
  echo  "OAUTH2_CLIENT_ID=client">>mdpmeta.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>mdpmeta.properties;
  echo  "DEFAULT_BINDER=kafka">>mdpmeta.properties

# mdpusers.properties
  echo  "DB_LOGIN=mdpusers">>mdpusers.properties;
  echo  "DB_PASSWORD="$shema_pass>>mdpusers.properties;
  echo  "DB_SHEMA=mdpusers">>mdpusers.properties;
  echo  "DB_ADMIN="$admin_login>>mdpusers.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>mdpusers.properties;
  echo  "DB_DATABASE="$db_name>>mdpusers.properties;
  echo  "DB_HOST="$db_host>>mdpusers.properties;
  echo  "DB_PORT="$db_port>>mdpusers.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdpusers.properties;
  echo  "OAUTH2_CLIENT_ID=client">>mdpusers.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>mdpusers.properties;
  echo  "DEFAULT_BINDER=kafka">>mdpusers.properties

# mdproles.properties
  echo  "DB_LOGIN=mdproles">>mdproles.properties;
  echo  "DB_PASSWORD="$shema_pass>>mdproles.properties;
  echo  "DB_SHEMA=mdproles">>mdproles.properties;
  echo  "DB_ADMIN="$admin_login>>mdproles.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>mdproles.properties;
  echo  "DB_DATABASE="$db_name>>mdproles.properties;
  echo  "DB_HOST="$db_host>>mdproles.properties;
  echo  "DB_PORT="$db_port>>mdproles.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdproles.properties;
  echo  "OAUTH2_CLIENT_ID=client">>mdproles.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>mdproles.properties;
  echo  "DEFAULT_BINDER=kafka">>mdproles.properties

# mdpdepartments.properties
  echo  "DB_LOGIN=mdpdepartments">>mdpdepartments.properties;
  echo  "DB_PASSWORD="$shema_pass>>mdpdepartments.properties;
  echo  "DB_SHEMA=mdpdepartments">>mdpdepartments.properties;
  echo  "DB_ADMIN="$admin_login>>mdpdepartments.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>mdpdepartments.properties;
  echo  "DB_DATABASE="$db_name>>mdpdepartments.properties;
  echo  "DB_HOST="$db_host>>mdpdepartments.properties;
  echo  "DB_PORT="$db_port>>mdpdepartments.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdpdepartments.properties;
  echo  "OAUTH2_CLIENT_ID=client">>mdpdepartments.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>mdpdepartments.properties;
  echo  "DEFAULT_BINDER=kafka">>mdpdepartments.properties

# mdpemployee.properties
  echo  "DB_LOGIN=mdpemployee">>mdpemployee.properties;
  echo  "DB_PASSWORD="$shema_pass>>mdpemployee.properties;
  echo  "DB_SHEMA=mdpemployee">>mdpemployee.properties;
  echo  "DB_ADMIN="$admin_login>>mdpemployee.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>mdpemployee.properties;
  echo  "DB_DATABASE="$db_name>>mdpemployee.properties;
  echo  "DB_HOST="$db_host>>mdpemployee.properties;
  echo  "DB_PORT="$db_port>>mdpemployee.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>mdpemployee.properties;
  echo  "OAUTH2_CLIENT_ID=client">>mdpemployee.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>mdpemployee.properties;
  echo  "DEFAULT_BINDER=kafka">>mdpemployee.properties

# mdpnginx.properties
  echo  "GATEWAY_URL=http://"$prefix"mdpgateway:8080">>mdpnginx.properties;

# front-ms-adminconsole.properties
  echo  "GATEWAY_URL=http://"$prefix"mdpgateway:8080">>front-ms-adminconsole.properties;

# qftsfnsdepintfa.properties
  echo  "DB_LOGIN=qftsfnsdepintfa">>qftsfnsdepintfa.properties;
  echo  "DB_PASSWORD="$shema_pass>>qftsfnsdepintfa.properties;
  echo  "DB_SHEMA=qftsfnsdepintfa">>qftsfnsdepintfa.properties;
  echo  "DB_ADMIN="$admin_login>>qftsfnsdepintfa.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>qftsfnsdepintfa.properties;
  echo  "DB_DATABASE="$db_name>>qftsfnsdepintfa.properties;
  echo  "DB_HOST="$db_host>>qftsfnsdepintfa.properties;
  echo  "DB_PORT="$db_port>>qftsfnsdepintfa.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>qftsfnsdepintfa.properties;
  echo  "OAUTH2_CLIENT_ID=client">>qftsfnsdepintfa.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>qftsfnsdepintfa.properties;
  echo  "DEFAULT_BINDER=kafka">>qftsfnsdepintfa.properties

# qftsfnsdepintwaittran.properties
  echo  "DB_LOGIN=qftsfnsdepintwaittran">>qftsfnsdepintwaittran.properties;
  echo  "DB_PASSWORD="$shema_pass>>qftsfnsdepintwaittran.properties;
  echo  "DB_SHEMA=qftsfnsdepintwaittran">>qftsfnsdepintwaittran.properties;
  echo  "DB_ADMIN="$admin_login>>qftsfnsdepintwaittran.properties;
  echo  "DB_ADMINPASSSWORD="$admin_pass>>qftsfnsdepintwaittran.properties;
  echo  "DB_DATABASE="$db_name>>qftsfnsdepintwaittran.properties;
  echo  "DB_HOST="$db_host>>qftsfnsdepintwaittran.properties;
  echo  "DB_PORT="$db_port>>qftsfnsdepintwaittran.properties;
  echo  "DB_URL=jdbs:sqlserver://"$db_host'\\'$db_name":"$db_port>>qftsfnsdepintwaittran.properties;
  echo  "OAUTH2_CLIENT_ID=client">>qftsfnsdepintwaittran.properties;
  echo  "OAUTH2_CLIENT_SECRET=secret">>qftsfnsdepintwaittran.properties;
  echo  "DEFAULT_BINDER=kafka">>qftsfnsdepintwaittran.properties
