# jenkins-salt
Jenkins salt configuration files

## Contributing

### Layout

All units should be orginized into top level 'units', for example 'slave' or 'bsw'.  These units should include an init.sls, which includes all of the local sls files.  Finally, these 'units' should be added to top.sls

### Partial Files

Whenever possible leave files that may need to be unique per machine (say /etc/fstab) unmanaged, and use an alternative that can be managed more easily (like systemd .mount and .automount files). This allows us to separate files that salt doesn't need to manage from those it does.
