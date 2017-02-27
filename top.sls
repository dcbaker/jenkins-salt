dev:
  '*snbgt1-03*':
      - base
      - slave
      - runner
base:
    '*':
        - base
    'otc-mesa-ci*':
        - master
    'otc-gfx*':
        - slave
        - runner
    '*snb*':
        - snb

# vim: ft=yaml
