/etc/default/avahi-daemon:
  file.managed:
    - source: salt://base/files/avahi/default
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
