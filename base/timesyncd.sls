/etc/systemd/timesyncd.conf.d:
    file.directory:
        - user: root
        - group: root
        - mode: 755

/etc/systemd/timesyncd.conf.d/time.conf:
    file.managed:
        - source: salt://base/files/timesyncd/time.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/systemd/timesyncd.conf.d

systemd-timesyncd:
    service.running:
        - enable: True
        - require:
            - file: /etc/systemd/timesyncd.conf.d/time.conf

restart-timesyncd:
    module.run:
        - name: service.restart
        - m_name: systemd-timesyncd
        - onchanges:
            - file: /etc/systemd/timesyncd.conf.d/time.conf

# vim: ft=yaml
