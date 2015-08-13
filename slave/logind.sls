/etc/systemd/logind.conf.d/:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - require_in:
        - file: /etc/sytemd/logind.conf.d/lid.conf

/etc/systemd/logind.conf.d/lid.conf:
  file.managed:
    - source: salt://slave/files/lid.conf
    - user: root
    - group: root
    - mode: 600

# vim: ft=yaml
