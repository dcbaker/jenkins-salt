/mnt/jenkins:
    file.directory: []

/etc/systemd/system/mnt-jenkins.mount:
    file.managed:
        - source: salt://slave/files/mnt-jenkins.mount
        - user: root
        - group: root
        - mode: 644

/etc/systemd/system/mnt-jenkins.automount:
    file.absent: []

mnt-jenkins.mount:
    service.running:
        - require:
            - file: /mnt/jenkins
            - file: /etc/systemd/system/mnt-jenkins.mount
            - file: /etc/systemd/system/mnt-jenkins.automount
        - enable: True

mnt-jenkins.automount:
    service.dead:
        - enable: False

# vim: ft=yaml
