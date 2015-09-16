include:
    - slave.grub

extend:
    /etc/default/grub:
        file:
            - source: salt://snb/files/grub
