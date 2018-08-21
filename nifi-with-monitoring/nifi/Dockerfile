FROM apache/nifi:1.7.1

RUN sed -i "/^nifi.flow.configuration.file=/c\nifi.flow.configuration.file=./conf/flow/flow.xml.gz" \
            /opt/nifi/nifi-1.7.1/conf/nifi.properties
RUN sed -i "/^nifi.flow.configuration.archive.dir=/c\nifi.flow.configuration.archive.dir=./conf/archive/" \
            /opt/nifi/nifi-1.7.1/conf/nifi.properties
