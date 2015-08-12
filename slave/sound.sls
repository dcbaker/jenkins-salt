/etc/modprobe.d/snd.conf:
  file.managed:
    - source: salt://slave/files/sound.conf
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
