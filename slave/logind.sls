/etc/systemd/logind.conf.d/lid.conf:
  file.managed:
    - source: salt://slave/files/lid.conf
    - user: root
    - group: root
    - mode: 600

# vim: ft=yaml
