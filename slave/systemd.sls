/etc/systemd/system/salt-minion.service.d:
    file.directory:
        - user: root
        - group: root
        - mode: 755

/etc/systemd/system/salt-minion.service.d/override.conf:
    file.managed:
        - source: salt://slave/files/salt-minion.service.d/override.conf
        - user: root
        - group: root
        - mode: 644
