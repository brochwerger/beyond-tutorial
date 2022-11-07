#! /usr/bin/sh
#oc new-app --env=MYSQL_USER=beyond --env=MYSQL_PASSWORD=beyond --env=MYSQL_DATABASE=messages registry.redhat.io/rhel9/mariadb-105:latest
oc new-app --labels app=beyond --name=dbserver -e POSTGRESQL_USER=beyond -e POSTGRESQL_PASSWORD=beyond -e POSTGRESQL_DATABASE=messages postgresql:latest

