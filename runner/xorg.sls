include:
  - slave.packages

/etc/X11/Xwrapper.config:
    file.managed:
        - source: salt://runner/files/xorg/Xwrapper.config
        - user: root
        - group: root
        - mode: 644

xserver-xorg-legacy:
    pkg.installed:
      - require:
        - sls: slave.packages
