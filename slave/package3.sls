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
            - libxdamage-dev
            - libxdamage-dev:i386
            - libxext-dev
            - libxext-dev:i386
            - libxfixes-dev
            - libxfixes-dev:i386
            - libxml2-dev
            - libxrender1
            - libxrender1:i386
            - libxshmfence-dev
            - libxshmfence-dev:i386
            - libxxf86vm-dev
            - libxxf86vm-dev:i386
            - linux-libc-dev
            - linux-libc-dev:i386
            - llvm
            - nfs-common
            - ninja-build
            - openjdk-8-jre
            - pkg-config
            - python-git
            - python-lxml
            - python-mako
            - python-numpy
            - python-opencv
            - python-simplejson
            - python-subprocess32
            - python-yaml
            - python3
            - python3-lxml
            - python3-mako
            - python3-numpy
            - python3-simplejson
            - python3-six
            - quilt
            - rsync
            - scons
            - sudo
            - valgrind
            - vim
            - vim-nox
            - x11proto-dri2-dev
            - x11proto-dri3-dev
            - x11proto-gl-dev
            - x11proto-present-dev
            - xserver-xorg
            - xutils-dev

# vim: ft=yaml
