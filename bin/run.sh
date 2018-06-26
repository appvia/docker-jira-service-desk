#!/bin/bash

: ${DB_HOST_NAME:=}
: ${DB_HOST_PORT:=3306}
: ${DB_NAME:=jira_sd_production}
: ${DB_USER:=root}
: ${DB_PASS:=}
: ${DB_POOL:=20}

if [[ -z ${DB_HOST_NAME} ]]; then
  echo "DB Host name must be provided"
  exit 1
fi

if [[ -z ${DB_HOST_PORT} ]]; then
  echo "DB Host port must be provided"
  exit 1
fi

if [[ -z ${DB_USER} ]]; then
  echo "DB user must be provided"
  exit 1
fi

if [[ -z ${DB_PASS} ]]; then
  echo "DB password must be provided"
  exit 1
fi

sed -e "s/{{DB_HOST_NAME}}/${DB_HOST_NAME}/" \
    -e "s/{{DB_HOST_PORT}}/${DB_HOST_PORT}/" \
    -e "s/{{DB_NAME}}/${DB_NAME}/" \
    -e "s/{{DB_USER}}/${DB_USER}/" \
    -e "s/{{DB_PASS}}/${DB_PASS}/" \
    -e "s/{{DB_POOL}}/${DB_POOL}/" \
    -i /var/atlassian/jira/dbconfig.xml

exec /opt/atlassian/jira/bin/start-jira.sh -fg
