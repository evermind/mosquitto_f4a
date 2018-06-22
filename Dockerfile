FROM library/eclipse-mosquitto:1.4.12
RUN apk add --update --no-cache python py-pip bash && \
    pip install j2cli

COPY /templates/ /templates/
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
