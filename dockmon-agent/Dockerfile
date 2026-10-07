FROM ghcr.io/darthnorse/dockmon-agent:latest
ARG BUILD_VERSION
ARG BUILD_ARCH
LABEL io.hass.name="DockMon Agent" \
      io.hass.description="DockMon agent for Home Assistant OS" \
      io.hass.type="app" \
      io.hass.version="${BUILD_VERSION}" \
      io.hass.arch="${BUILD_ARCH}"
USER root
COPY run.sh /run.sh
RUN chmod 0755 /run.sh
ENTRYPOINT []
CMD ["/run.sh"]
