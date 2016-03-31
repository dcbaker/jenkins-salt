/etc/default/grub:
  file.managed:
    - source: salt://runner/files/grub
    - user: root
    - group: root
    - mode: 644

update-grub:
    cmd.run:
        - onchanges:
            - file: /etc/default/grub
    module.run:
        - name: system.reboot
        - onchanges:
            - file: /etc/default/grub
        - order: last


# vim: ft=yaml
