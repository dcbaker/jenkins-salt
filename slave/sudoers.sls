/etc/sudoers.d/:
    file.directory:
        - user: root
        - group: root
        - mode: 750

/etc/sudoers.d/10-jenkins-reboot:
  file.managed:
    - source: salt://slave/files/10-jenkins-reboot
    - user: root
    - group: root
    - mode: 600
    - require:
        - file: /etc/sudoers.d

# vim: ft=yaml
