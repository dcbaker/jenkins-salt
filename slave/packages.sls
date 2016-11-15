# The format used by runner-packages allows for a very terse list of all pacakges
# for more complex requirements see:
# http://docs.saltstack.com/en/latest/ref/states/all/salt.states.pkg.html

include:
    - base.timesyncd
    - slave.apt

runner-packages:
    pkg.installed:
        - require:
            - sls: base.timesyncd
            - sls: slave.apt
        - refresh: True
        - normalize: False
        - pkgs:
            - tsocks
            - asciidoc
            - autoconf
            - avahi-daemon
            - bison
            - build-essential
            - ccache
            - clang
            - clang-3.7
            - cmake
            - docbook-website
            - emacs
            - flex
            - freeglut3
            - freeglut3:i386
            - g++-multilib
            - gcc-5-base
            - gcc-5-base:i386
            - gcc-multilib
            - git
            - libc6
            - libc6-dev
            - libc6-dev:i386
            - libc6:i386
            - libcaca0
            - libcaca0:i386
            - libdrm2
            - libdrm2:i386
            - libedit-dev
            - libegl1-mesa
            - libegl1-mesa
            - libegl1-mesa-dev
            - libegl1-mesa-drivers
            - libegl1-mesa-drivers:i386
            - libegl1-mesa:i386
            - libegl1-mesa:i386
            - libelf-dev
            - libelf-dev:i386
            - libexpat1-dev
            - libexpat1-dev:i386
            - libffi-dev
            - libffi-dev:i386
            - libffi6
            - libffi6:i386

# vim: ft=yaml
