dnsmasq:
    pkg.installed: []

/etc/dnsmasq.conf:
    file.managed:
        - source: salt://base/files/dnsmasq/dnsmasq.conf
        - user: root
        - group: root
        - mode: 644

dnsmasq-service:
    service.running:
        - name: dnsmasq
        - enable: True
        - reload: True
        - require:
            - pkg: dnsmasq
        - watch:
            - file: /etc/dnsmasq.conf
