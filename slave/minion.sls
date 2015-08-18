/etc/salt/minion.d/master.conf:
  file.managed: 
    - source: salt://slave/files/master.yaml
    - user: root
    - group: root
    - mode: 644

/etc/salt/minion.d/startup.conf:
  file.managed: 
    - source: salt://slave/files/startup.yaml
    - user: root
    - group: root
    - mode: 644

/etc/salt/minion.d/schedule.conf:
    file.managed:
        - source: salt://slave/files/schedule.yaml
        - user: root
        - group: root
        - mode: 644

# vim: ft=yaml
