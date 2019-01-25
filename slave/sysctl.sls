/etc/sysctl.d/10-oom-reboot.conf:
    file.managed:
        - source: salt://slave/files/sysctl.d/10-oom-reboot.conf
        - user: root
        - group: root
        - mode: 644
