/etc/modprobe.d/snd.conf:
  file.managed:
    - source: salt://base/files/sound/snd.conf
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
