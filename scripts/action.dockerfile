FROM ghcr.io/zephyrproject-rtos/scancode:v1.0.0

COPY entrypoint.sh /entrypoint.sh
COPY license_check.py /license_check.py
COPY default_license_config.yml /default_license_config.yml

ENTRYPOINT ["/entrypoint.sh"]
