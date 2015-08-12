/etc/sudoers.d/10-jenkins-reboot:
  file.managed:
    - source: salt://slave/files/10-jenkins-reboot
    - user: root
    - group: root
    - mode: 600

# vim: ft=yaml
