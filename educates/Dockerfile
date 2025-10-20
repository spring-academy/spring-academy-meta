FROM bitnami/kubectl

# copy files in
RUN mkdir -p /opt/tools
COPY bootstrapper/ /opt/tools

# perform actions
ENTRYPOINT ["/opt/tools/bootstrap.sh"]