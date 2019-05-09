FROM cptactionhank/atlassian-jira-service-desk:latest

USER 0

RUN wget https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem \
      -O /usr/local/share/ca-certificates/rds-combined-ca-bundle.pem && \
    update-ca-certificates

USER 1000

ADD --chown=jira:jira config/dbconfig.xml /var/atlassian/
ADD --chown=jira:jira config/jira-config.properties /var/atlassian/
ADD --chown=jira:jira bin/run.sh /var/atlassian/

CMD ["/var/atlassian/run.sh", "-fg"]
