# Docker image for Atlassian JIRA Service Desk

[![Docker Repository on Quay](https://quay.io/repository/appvia/atlassian-jira-service-desk/status "Docker Repository on Quay")](https://quay.io/repository/appvia/atlassian-jira-service-desk)

## Configuration

Image expects the following MySQL database configuration:

* `DB_HOST_NAME` - database name
* `DB_HOST_PORT` - database port, defaults to `3306`
* `DB_NAME` - database name, dafaults to `jira_sd_production`
* `DB_USER` - databae user, defaults to `root`
* `DB_PASS` - database password
* `DB_POOL` - min / max connection pool
* `X_PROXY_NAME` - Sets the Tomcat Connectors ProxyName attribute
* `X_PROXY_PORT` - Sets the Tomcat Connectors ProxyPort attribute
* `X_PROXY_SCHEME` - If set to https the Tomcat Connectors secure=true and redirectPort equal to X_PROXY_PORT
* `X_PATH` - Sets the Tomcat connectors path attribute

NOTE: SSL is enforced on MySQL database connection.