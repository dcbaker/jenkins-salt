rsync:
    pkg.installed: []

/etc/rsyncd.conf:
    file.managed:
        - source: salt://master/files/rsyncd/rsyncd.conf
        - user: root
        - group: root
        - mode: 644

rsync-service:
    service.running:
        - name: rsync
        - enable: True
        - reload: True
        - require:
            - pkg: rsync
