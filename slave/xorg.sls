xorg:
  pkg.installed

/etc/X11/Xwrapper.config:
  file.managed:
    - source: salt://slave/files/Xwrapper.config
    - user: root
    - group: root
    - mode: 644
