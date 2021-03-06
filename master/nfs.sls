nfs-kernel-server:
    pkg.installed: []

/etc/default/nfs-kernel-server:
    file.managed:
        - source: salt://master/files/nfs-server/default.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: nfs-kernel-server

/etc/exports:
    file.managed:
        - source: salt://master/files/nfs-server/exports
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: nfs-kernel-server

nfs-service:
    service.running:
        - name: nfs-kernel-server
        - enable: true
        - reload: true
        - require:
            - file: /etc/default/nfs-kernel-server
            - file: /etc/exports
        - watch:
            - file: /etc/default/nfs-kernel-server
            - file: /etc/exports
