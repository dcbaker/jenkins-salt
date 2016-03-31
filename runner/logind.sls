/etc/systemd/logind.conf.d/:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - require_in:
        - file: /etc/systemd/logind.conf.d/lid.conf

/etc/systemd/logind.conf.d/lid.conf:
  file.managed:
    - source: salt://runner/files/lid.conf
    - user: root
    - group: root
    - mode: 600

# vim: ft=yaml
