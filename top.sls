dev:
    'otc-gfxtest-g33-03*':
        - base
        - slave
        - runner
base:
    '*':
        - base
    'otc-gfxtest-*':
        - slave
        - runner
    '*snb*':
        - snb

# vim: ft=yaml
