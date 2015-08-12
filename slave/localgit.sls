/usr/local/bin/git:
  file.managed:
    - source: salt://slave/files/git
    - user: root
    - group: root
    - mode: 775

# vim: ft=yaml
