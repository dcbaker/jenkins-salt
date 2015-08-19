# The format used by slave-packages allows for a very terse list of all pacakges
# for more complex requirements see:
# http://docs.saltstack.com/en/latest/ref/states/all/salt.states.pkg.html

slave-packages:
    pkg.installed:
        - refresh: True
        - normalize: False
        - pkgs:
            - vim
            - sudo
            - build-essential
