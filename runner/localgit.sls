/usr/local/bin/git:
  file.managed:
    - source: salt://runner/files/git
    - user: root
    - group: root
    - mode: 775

# vim: ft=yaml
