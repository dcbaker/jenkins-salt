isc-dhcp-server:
    pkg.installed: []

/etc/default/isc-dhcp-server:
    file.managed:
        - source: salt://master/files/dhcp-server/default.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: isc-dhcp-server

/etc/dhcp/dhcpd.conf:
    file.managed:
        - source: salt://master/files/dhcp-server/dhcpd.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: isc-dhcp-server

dhcp-service:
    service.running:
        - name: isc-dhcp-server
        - enable: True
        - reload: True
        - watch:
            - file: /etc/dhcp/dhcpd.conf
            - file: /etc/defult/isc-dhcp-server
        - require:
            - pkg: isc-dhcp-server
