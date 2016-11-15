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
            - libgbm-dev
            - libgbm1
            - libgbm1:i386
            - libgcc1
            - libgcc1:i386
            - libgcrypt20-dev
            - libgcrypt20:i386
            - libgl1-mesa-dev
            - libgl1-mesa-dri
            - libgl1-mesa-dri:i386
            - libgl1-mesa-glx
            - libgl1-mesa-glx:i386
            - libglapi-mesa
            - libgles2-mesa-dev
            - libglu1-mesa
            - libglu1-mesa
            - libglu1-mesa-dev
            - libglu1-mesa-dev
            - libglu1-mesa-dev:i386
            - libglu1-mesa:i386
            - libicu-dev
            - libjpeg8
            - libllvm4.0
            - libllvm4.0:i386
            - libpciaccess-dev
            - libpciaccess-dev:i386
            - libpciaccess0
            - libpciaccess0:i386
            - libpng-dev
            - libpng-dev:i386
            - libpthread-stubs0-dev
            - libsdl2-2.0-0
            - libssl-dev
            - libssl-dev:i386
            - libssl1.0.2
            - libssl1.0.2:i386
            - libtinfo-dev
            - libtinfo-dev:i386
            - libtool
            - libudev-dev
            - libudev-dev:i386
            - libvdpau-dev
            - libvdpau-dev:i386
            - libvulkan-dev
            - libwayland-egl1-mesa
            - libwayland-egl1-mesa:i386
            - libx11-dev
            - libx11-dev:i386
            - libx11-xcb-dev
            - libx11-xcb-dev:i386
            - libxcb-dri2-0-dev
            - libxcb-dri2-0-dev:i386
            - libxcb-dri3-dev
            - libxcb-dri3-dev:i386
            - libxcb-glx0-dev
            - libxcb-glx0-dev:i386
            - libxcb-present-dev
            - libxcb-present-dev:i386
            - libxcb-randr0-dev
            - libxcb-randr0-dev:i386
            - libxcb-sync-dev
            - libxcb-sync-dev:i386
            - libxcb-xfixes0-dev
            - libxcb-xfixes0-dev:i386

# vim: ft=yaml
