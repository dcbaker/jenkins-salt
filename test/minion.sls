/etc/salt/minion.d/master.conf:
  file.managed: 
    - source: salt://test/files/minion/master.yaml
    - user: root
    - group: root
    - mode: 644

/etc/salt/minion.d/startup.conf:
  file.managed: 
    - source: salt://test/files/minion/startup.yaml
    - user: root
    - group: root
    - mode: 644

/etc/salt/minion.d/schedule.conf:
    file.managed:
        - source: salt://test/files/minion/schedule.yaml
        - user: root
        - group: root
        - mode: 644

restart_minion:
    cmd.run:
        - name: |
            nohup /bin/sh -c 'sleep 10 && salt-call --local service.restart salt-minion'
        - python_shell: True
        - order: last
        - onchanges:
            - file: /etc/salt/minion.d/master.conf
            - file: /etc/salt/minion.d/startup.conf
            - file: /etc/salt/minion.d/schedule.conf

# vim: ft=yaml
