/etc/sudoers.d:
    file.directory:
        - user: root
        - group: root
        - mode: 750

/etc/sudoers.d/10-jenkins-reboot:
  file.managed:
    - source: salt://runner/files/10-jenkins-reboot
    - user: root
    - group: root
    - mode: 600
    - require:
        - file: /etc/sudoers.d

/etc/sudoers.d/11-jenkins-tty:
  file.managed:
    - source: salt://slave/files/11-jenkins-tty
    - user: root
    - group: root
    - mode: 600
    - require:
        - file: /etc/sudoers.d

# vim: ft=yaml
