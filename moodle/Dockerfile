FROM bitnami/moodle

# RUN curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.17.0-linux-x86_64.tar.gz
# RUN tar xzf metricbeat-7.17.0-linux-x86_64.tar.gz


EXPOSE 8181

USER root
# RUN mv metricbeat-7.17.0-linux-x86_64 /usr/share/metricbeat
RUN echo 'Include "/opt/bitnami/php/etc/conf.d/server-status.conf"' >> /opt/bitnami/apache/conf/httpd.conf
ENTRYPOINT [ "/opt/bitnami/scripts/moodle/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/moodle/run.sh" ]