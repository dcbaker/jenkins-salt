include:
    - slave.apt

/etc/apt/preferences.d/meson:
    file.managed:
        - source: salt://builder/files/apt/preferences.d/meson
        - user: root
        - group: root
        - mode: 644
        - require:
            - sls: slave.apt
