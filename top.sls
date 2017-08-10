base:
    '*':
        - base
    'otc-mesa-ci*':
        - master
    'otc-mesa-android*':
        - master
    'otc-gfx*':
        - slave
        - runner
    'otc-gfxtest*':
        - test
    'otc-gfxperf*':
        - perf
    '*snb*':
        - snb

# vim: ft=yaml
