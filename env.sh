#!/bin/sh

echo "exportting env variables"

export AZ_RESOURCE_GROUP=tmp-spring-jdbc-postgresql
export AZ_DATABASE_NAME=mslearn-tmp-spring-jdbc-postgresql
export AZ_LOCATION=eastus
export AZ_POSTGRESQL_USERNAME=spring
export AZ_POSTGRESQL_PASSWORD=admin
export AZ_LOCAL_IP_ADDRESS=$(curl 95.80.26.235)

export SPRING_DATASOURCE_URL=jdbc:postgresql://$AZ_DATABASE_NAME.postgres.database.azure.com:5432/demo
export SPRING_DATASOURCE_USERNAME=spring@$AZ_DATABASE_NAME
export SPRING_DATASOURCE_PASSWORD=$AZ_POSTGRESQL_PASSWORD