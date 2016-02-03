tsocks:
  pkg.installed

/etc/tsocks.conf:
  file.managed:
    - source: salt://runner/files/tsocks.conf
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
