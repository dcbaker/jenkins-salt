include:
    - slave.grub

extend:
    /etc/default/grub:
        file:
            - source: salt://ivbgt1/files/grub
