rsnapshot:
    pkg.installed: []

/etc/rsnapshot.conf:
    file.managed:
        - source: salt://master/files/rsnapshot/rsnapshot.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: rsnapshot

/etc/cron.daily/1rsnapshot:
    file.managed:
        - source: salt://master/files/rsnapshot/cron.daily
        - user: root
        - group: root
        - mode: 755
        - require:
            - pkg: rsnapshot

/etc/cron.weekly/1rsnapshot:
    file.managed:
        - source: salt://master/files/rsnapshot/cron.weekly
        - user: root
        - group: root
        - mode: 755
        - require:
            - pkg: rsnapshot

/etc/cron.monthly/1rsnapshot:
    file.managed:
        - source: salt://master/files/rsnapshot/cron.monthly
        - user: root
        - group: root
        - mode: 755
        - require:
            - pkg: rsnapshot
