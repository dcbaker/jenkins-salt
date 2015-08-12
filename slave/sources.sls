/etc/apt/sources.list:
  file.managed: 
    - source: salt://slave/files/sources.list
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
