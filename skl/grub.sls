include:
    - slave.grub

extend:
    /etc/default/grub:
        file:
            - source: salt://skl/files/grub
