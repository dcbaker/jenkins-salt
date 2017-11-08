include:
    - base.timesyncd
    - slave.apt

perf-packages:
    pkg.installed:
        - require:
            - sls: base.timesyncd
            - sls: slave.apt
        - refresh: True
        - normalize: False
        - pkgs:
          - x11-xserver-utils
