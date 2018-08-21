FROM apache/nifi-registry:0.2.0

ARG NIFI_HOST
ENV NIFI_HOST ${NIFI_HOST}

USER root
COPY ./files/register.sh /tmp/register.sh
RUN chmod +x /tmp/register.sh
USER nifi

CMD ["sh", "-c", "/tmp/register.sh && ${NIFI_REGISTRY_BASE_DIR}/scripts/start.sh"]
