FROM prom/prometheus

USER root
COPY ./files/register.sh /tmp/register.sh
COPY ./files/run.sh /tmp/run.sh
COPY ./files/prometheus.yml /etc/prometheus/prometheus.yml
RUN chmod +x /tmp/register.sh
RUN chmod +x /tmp/run.sh
ADD ./files/curl-7.30.0.ermine.tar.bz2 /tmp/.
RUN mv /tmp/curl-7.30.0.ermine/curl.ermine /bin/curl \
    && rm -Rf /tmp/curl-7.30.0.ermine
USER nobody

ENTRYPOINT []
CMD ["sh", "-c", "/tmp/register.sh && /tmp/run.sh"]
