include:
    - slave.grub

extend:
    /etc/default/grub:
        file:
            - source: salt://kbl/files/grub
