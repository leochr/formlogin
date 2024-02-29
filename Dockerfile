FROM icr.io/appcafe/websphere-liberty:kernel-java17-openj9-ubi

ARG VERBOSE=true
COPY --chown=1001:0  server.xml /config/

RUN features.sh
COPY --chown=1001:0  formlogin.war /config/apps/
RUN configure.sh && rm -rf /output/resources/security/