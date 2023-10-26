FROM ghcr.io/zephyrproject-rtos/scancode:v1.0.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
