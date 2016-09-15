/etc/dhcp/dhclient.conf:
    file.managed:
        - source: salt://slave/files/dhcp/dhclient.conf
        - user: root
        - group: root
        - mode: 644
