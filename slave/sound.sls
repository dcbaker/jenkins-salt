/etc/modprobe.d/snd.conf:
  file.managed:
    - source: salt://slave/files/snd.conf
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
