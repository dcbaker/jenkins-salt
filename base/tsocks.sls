tsocks:
  pkg.installed

/etc/tsocks.conf:
  file.managed:
    - source: salt://base/files/tsocks/tsocks.conf
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
