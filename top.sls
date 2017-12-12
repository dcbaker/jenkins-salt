base:
    '*':
        - base
    'roles:jenkins':
        - match: grain
        - master
    'roles:conformance':
        - match: grain
        - slave
        - runner
        - test
    'roles:performance':
        - match: grain
        - slave
        - runner
        - perf
    '*snb*':
        - snb

# vim: ft=yaml
