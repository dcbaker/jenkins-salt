/etc/systemd/timesyncd.conf.d:
    file.directory:
        - user: root
        - gorup: root
        - mode: 755

/etc/systemd/timesyncd.conf.d/time.conf:
    file.managed:
        - source: salt://slave/files/time.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/systemd/timesyncd.conf.d

ntpd:
    service.dead:
        - enable: False
    pkg.removed: []

systemd-timesyncd:
    service.running:
        - enable: True
        - require:
            - file: /etc/systemd/timesyncd.conf.d/time.conf
            - pkg: ntpd

# vim: ft=yaml
