# The format used by runner-packages allows for a very terse list of all pacakges
# for more complex requirements see:
# http://docs.saltstack.com/en/latest/ref/states/all/salt.states.pkg.html

master-packages:
    pkg.installed:
        - refresh: True
        - normalize: False
        - pkgs:
            - tsocks
            - screen
            - openjdk-8-jre
            - python-beautifulsoup
            - python-git
            - vim
            - vim-nox

# vim: ft=yaml
