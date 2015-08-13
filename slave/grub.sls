/etc/default/grub:
  file.managed:
    - source: salt://slave/files/grub
    - user: root
    - group: root
    - mode: 644

# vim: ft=yaml
