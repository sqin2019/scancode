FROM ghcr.io/zephyrproject-rtos/scancode:v1.0.0

COPY scripts/entrypoint.sh /entrypoint.sh
COPY scripts/license_check.py /license_check.py
COPY scripts/license_config.yml /license_config.yml

ENTRYPOINT ["/entrypoint.sh"]
