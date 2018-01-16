/etc/systemd/system/fetch_mirrors.service:
    file.symlink:
      - target: /var/cache/mesa_jenkins/repos/mesa_ci/services/fetch_mirrors/fetch_mirrors.service

/etc/systemd/system/poll_branches.service:
    file.symlink:
      - target: /var/cache/mesa_jenkins/repos/mesa_ci/services/poll_branches/poll_branches.service

/etc/systemd/system/reboot_hung_systems.service:
    file.symlink:
      - target: /var/lib/git/mesa_jenkins/services/reboot_hung_systems/reboot_hung_systems.service
