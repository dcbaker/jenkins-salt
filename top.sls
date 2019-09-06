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
    'roles:builder':
        - match: grain
        - slave
        - builder

# vim: ft=yaml
