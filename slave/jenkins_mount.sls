/mnt/jenkins:
    file.directory:
        - user: root
        - group: root
        - mode: 666

/etc/systemd/system/mnt-jenkins.mount:
    file.managed:
        - source: salt://slave/files/mnt-jenkins.mount
        - user: root
        - group: root
        - mode: 644

/etc/systemd/system/mnt-jenkins.automount:
    file.managed:
        - source: salt://slave/files/mnt-jenkins.automount
        - user: root
        - group: root
        - mode: 644

mnt-jenkins.mount:
    service.running:
        - require:
            - file: /mnt/jenkins
            - file: /etc/systemd/system/mnt-jenkins.mount
            - file: /etc/systemd/system/mnt-jenkins.automount

# vim: ft=yaml
