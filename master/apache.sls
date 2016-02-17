apache2:
    pkg.installed: []

apache-service:
    service.running:
        - name: apache2
        - enable: True
        - reload: True
        - require:
            - pkg: apache2
        - watch:
            - file: /etc/apache2/sites-enabled/*
            - file: /etc/apache2/mods-enabled/*

/etc/apache2/sites-enabled/jenkins.conf:
    file.managed:
        - source: salt://master/files/apache/jenkins.conf
        - user: root
        - group: root
        - mode: 644

/etc/apache2/mods-enabled/proxy.conf:
    file.managed:
        - source: salt://master/files/apache/proxy.conf
        - user: root
        - group: root
        - mode: 644

/etc/apache2/mods-enabled/proxy_http.load:
    file.managed:
        - source: salt://master/files/apache/proxy_http.load
        - user: root
        - group: root
        - mode: 644

/etc/apache2/mods-enabled/proxy.load:
    file.managed:
        - source: salt://master/files/apache/proxy.load
        - user: root
        - group: root
        - mode: 644
