FROM cptactionhank/atlassian-jira-service-desk:latest

USER 2

ADD --chown=daemon:daemon config/dbconfig.xml /var/atlassian/jira/
ADD --chown=daemon:daemon bin/run.sh /var/atlassian/jira/

CMD ["/var/atlassian/jira/run.sh", "-fg"]
