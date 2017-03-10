/etc/apt/preferences.d/:
    file.directory:
        - user: root
        - group: root
        - mode: 755

/etc/apt/preferences.d/main:
    file.managed:
        - source: salt://slave/files/apt/preferences.d/main
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/apt/preferences.d/
            - file: /etc/apt/sources.list.d/unstable.list

/etc/apt/preferences.d/libjpeg8:
    file.managed:
        - source: salt://slave/files/apt/preferences.d/libjpeg8
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/apt/preferences.d/
            - file: /etc/apt/sources.list.d/unstable.list

/etc/apt/preferences.d/tsocks:
    file.managed:
        - source: salt://slave/files/apt/preferences.d/tsocks
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/apt/preferences.d/
            - file: /etc/apt/sources.list.d/unstable.list

/etc/apt/preferences.d/libdrm:
    file.managed:
        - source: salt://slave/files/apt/preferences.d/libdrm
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/apt/preferences.d/
            - file: /etc/apt/sources.list.d/experimental.list

/etc/apt/sources.list.d/:
    file.directory:
        - user: root
        - group: root
        - mode: 755

/etc/apt/sources.list.d/unstable.list:
    file.managed:
        - source: salt://slave/files/apt/sources.list.d/unstable.list
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/apt/sources.list.d/

/etc/apt/sources.list.d/experimental.list:
    file.managed:
        - source: salt://slave/files/apt/sources.list.d/experimental.list
        - user: root
        - group: root
        - mode: 644
        - require:
            - file: /etc/apt/sources.list.d/
