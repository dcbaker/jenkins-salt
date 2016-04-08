git-daemon-sysvinit:
    pkg.installed: []

/etc/systemd/system/git-daemon.service.d:
    file.directory:
        - user: root
        - group: root
        - mode: 755

/etc/systemd/system/git-daemon.service.d/restart.conf:
    file.managed:
        - source: salt://master/files/git-daemon/restart.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/systemd/system/git-daemon.service.d

/etc/default/git-daemon:
    file.managed:
        - source: salt://master/files/git-daemon/git-daemon
        - user: root
        - group: root
        - mode: 644

git-daemon-service:
    service.running:
        - name: git-daemon
        - enable: True
        - reload: True
        - require:
            - pkg: git-daemon-sysvinit
        - watch:
            - file: /etc/systemd/system/git-daemon.service.d/restart.conf
