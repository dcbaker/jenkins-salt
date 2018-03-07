/usr/bin/repo:
    file.managed:
        - source: salt://builder/files/bin/repo
        - user: root
        - group: root
        - mode: 755
