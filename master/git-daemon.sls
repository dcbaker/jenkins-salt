git-daemon-run:
    pkg.installed: []

/etc/systemd/system/git-daemon.service.d:
    file.directory:
        - user: root
        - group: root
        - mode: 755

/etc/systemd/system/git-daemon.service.d/reboot.conf:
    file.managed:
        - source: salt://master/files/git-daemon/reboot.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/systemd/system/git-deamon.service.d

git-daemon-service:
    service.running:
        - name: git-daemon
        - enable: True
        - reload: True
        - require:
            - pkg: git-daemon-run
        - watch:
            - file: /etc/systemd/system/git-daemon.service.d/reboot.conf
