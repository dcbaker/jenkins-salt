include:
    - runner.grub

extend:
    /etc/default/grub:
        file:
            - source: salt://snb/files/grub
