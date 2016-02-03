dev:
    'otc-gfxtest-g33-03*':
        - base
        - slave
base:
    '*':
        - base
    'otc-gfxtest-*':
        - slave
    '*snb*':
        - snb

# vim: ft=yaml
