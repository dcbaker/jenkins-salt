include:
    - base.timesyncd
    - slave.apt

builder-packages:
    pkg.installed:
        - require:
            - sls: base.timesyncd
            - sls: slave.apt
        - refresh: True
        - normalize: False
        - pkgs:
          - libvdpau-dev
          - libvdpau-dev:i386
          - libxvmc-dev
          - libxvmc-dev:i386
          - libva-dev 
          - libva-dev:i386
          - libomxil-bellagio-dev
          - libxkbcommon-dev
          - meson
          - wayland-protocols
          - libegl1-mesa-dev:i386
          - libclc-dev
          - libclang-4.0-dev
          - libllvm4.0
          - libllvm4.0:i386
          - llvm-4.0-dev
          - curl
            # Android lists this as a dependency
          - distcc
          - dosfstools
          - gettext
          - git-core
            # Android lists this as a dependency
          - gnupg
          - gperf
          - lib32ncurses5-dev
          - lib32z-dev
          - libc6-dev-i386
          - libgl1-mesa-dev
          - libncurses5-dev:i386
          - libreadline6-dev:i386
          - libxml2-utils
          - libxrandr-dev
          - lunch
          - mtools
          - openjdk-8-jdk
          - python-markdown
          - qt-sdk
          - sbsigntool
          - squashfs-tools
          - tofrodos
          - unzip
          - x11proto-core-dev
          - x11proto-dev
          - xsltproc
          - zip
          - zlib1g-dev
