FROM ghcr.io/ublue-os/aurora-nvidia-open:stable

COPY build_files/build.sh /tmp/build.sh

RUN chmod +x /tmp/build.sh && \
    /tmp/build.sh && \
    ostree container commit