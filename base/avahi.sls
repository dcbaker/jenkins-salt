avahi-daemon:
    pkg.installed: []

/etc/default/avahi-daemon:
  file.managed:
    - source: salt://base/files/avahi/default
    - user: root
    - group: root
    - mode: 644

/etc/avahi/services/ssh.service:
  file.managed: 
    - source: salt://base/files/avahi/ssh.service
    - user: root
    - group: root
    - mode: 644

avahi-service:
    service.running:
        - name: avahi-daemon
        - enable: True
        - reload: True
        - require:
            - pkg: avahi-daemon
        - watch:
            - file: /etc/avahi/services/ssh.service
            
# vim: ft=yaml
