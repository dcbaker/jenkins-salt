/etc/resolv.conf:
    file.managed:
        - source: salt://slave/files/resolv/resolv.conf
        - user: root
        - group: root
        - mode: 644
