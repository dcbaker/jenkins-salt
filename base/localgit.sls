/usr/local/bin/git:
  file.managed:
    - source: salt://base/files/localgit/git
    - user: root
    - group: root
    - mode: 775

# vim: ft=yaml
