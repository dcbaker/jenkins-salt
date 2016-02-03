/etc/apt/sources.list:
  file.managed: 
    - source: salt://base/files/sources/sources.list
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
