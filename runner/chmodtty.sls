/usr/local/bin/chmodtty9.sh:
  file.managed:
    - source: salt://runner/files/chmodtty9.sh
    - user: root
    - group: root
    - mode: 775

# vim: ft=yaml
