/usr/local/bin/copy_error_state.sh:
  file.managed:
    - source: salt://runner/files/copy_error_state.sh
    - user: root
    - group: root
    - mode: 700

# vim: ft=yaml
