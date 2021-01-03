FROM quay.io/keycloak/keycloak:latest

WORKDIR /opt/jboss/tools/

ARG CUSTOM_PATH

RUN sed -i -e "s/<web-context>auth<\/web-context>/<web-context>${CUSTOM_PATH}\/auth<\/web-context>/" $JBOSS_HOME/standalone/configuration/standalone.xml
RUN sed -i -e "s/<web-context>auth<\/web-context>/<web-context>${CUSTOM_PATH}\/auth<\/web-context>/" $JBOSS_HOME/standalone/configuration/standalone-ha.xml
RUN sed -i -e "s:name=\"/\":name=\"/$CUSTOM_PATH/\":" $JBOSS_HOME/standalone/configuration/standalone.xml
RUN sed -i -e "s:name=\"/\":name=\"/$CUSTOM_PATH/\":" $JBOSS_HOME/standalone/configuration/standalone-ha.xml
RUN sed -i -e "s/\/auth/\/${CUSTOM_PATH}\/auth/" $JBOSS_HOME/welcome-content/index.html
RUN sed -i -e "s/<web-context>auth<\/web-context>/<web-context>${CUSTOM_PATH}\/auth<\/web-context>/" $JBOSS_HOME/domain/configuration/domain.xml