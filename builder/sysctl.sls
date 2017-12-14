/etc/sysctl.d/50-unprivleged-userns-clone.conf:
  file.managed:
    - source: salt://runner/files/50-unprivleged-userns-clone.conf
    - user: root
    - group: root
    - mode: 600

/etc/sysctl.d/60-unprivileged-dmesg.conf:
  file.managed:
    - source: salt://runner/files/60-unprivileged-dmesg.conf
    - user: root
    - group: root
    - mode: 600

# vim: ft=yaml
