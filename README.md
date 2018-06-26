# Docker image for Atlassian JIRA Service Desk

## Configuration

Image expects the following MySQL database configuration:

* `DB_HOST_NAME` - database name
* `DB_HOST_PORT` - database port, defaults to `3306`
* `DB_NAME` - database name, dafaults to `jira_sd_production`
* `DB_USER` - databae user, defaults to `root`
* `DB_PASS` - database password
* `DB_POOL` - min / max connection pool
