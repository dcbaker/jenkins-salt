include:
    - slave.grub

extend:
    /etc/default/grub:
        file:
            - source: salt://bdw/files/grub
