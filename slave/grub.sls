/etc/default/grub:
  file.managed:
    - source: salt://slave/files/grub
    - user: root
    - group: root
    - mode: 644

update-grub:
    cmd.run:
        - onchanges:
            - file: /etc/default/grub

system.reboot:
    module.run:
        - require:
            - id: update-grub


# vim: ft=yaml
