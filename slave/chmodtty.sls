/usr/local/bin/chmodtty9.sh:
  file.managed:
    - source: salt://slave/files/chmodtty9.sh
    - user: root
    - group: root
    - mode: 775

# vim: ft=yaml
