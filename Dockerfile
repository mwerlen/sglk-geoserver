FROM mwerlen/geoserver:latest
MAINTAINER Maxime Werlen maxime@werlen.fr

# ENV CATALINA_HOME /usr/local/tomcat
# ENV CATALINA_OPTS -Xmx1024m -Xms48m -XX:SoftRefLRUPolicyMSPerMB=36000 -XX:MaxPermSize=512m

#----------------------------------
#--Removing data-dir
#-----------------------------------

ENV GEOSERVER_DATA_DIR /var/lib/geoserver_data
RUN rm -rf $CATALINA_HOME/webapps/geoserver/data && mkdir $GEOSERVER_DATA_DIR

ADD geoserver-data-dir $GEOSERVER_DATA_DIR

EXPOSE 8080
CMD ["catalina.sh", "run"]
