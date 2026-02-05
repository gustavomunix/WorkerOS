FROM ghcr.io/ublue-os/ucore-minimal:stable

COPY build_files/build.sh /tmp/build.sh

RUN chmod +x /tmp/build.sh && \
    /tmp/build.sh && \
    ostree container commit