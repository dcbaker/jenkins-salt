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
        - require_in:
            - sls: grub-reboot

system.reboot:
    module.run:
        - require:
            - sls: update-grub


# vim: ft=yaml
