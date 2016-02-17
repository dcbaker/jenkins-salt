python-pygit2:
    pkg.installed: []

salt-master:
    pkg.installed:
        - requires:
            - pkg: python-pygit2

salt-master-service:
    service.running:
        - name: salt-master
        - enable: True
        - reload: True
        - require:
            pkg: salt-master
        - watch:
            file: /etc/salt/master.d/*

/etc/salt-master.d:
    file.directory:
        - user: root
        - group: root
        - mode: 755

/etc/salt/master.d/backends.conf:
    file.managed:
        - source: salt://master/files/salt-master/backends.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/salt/master.d

/etc/salt/master.d/security.conf:
    file.managed:
        - source: salt://master/files/salt-master/security.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/salt/master.d
