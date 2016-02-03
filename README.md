# jenkins-salt
Jenkins salt configuration files

## Contributing

All changes should be pushed first into the 'dev' branch for testing, then merged down into master once tested and correct.

### Layout

All units should be organized into top level 'units', for example 'slave' or 'bsw'.  These units should include an init.sls, which includes all of the local sls files.  Finally, these 'units' should be added to top.sls

The following inheritance hierarchy is used:
- base
    - slave
        - runner
        - builder
    - master

Base: shared state for all machines, regardless of role. This is state like, use the local package mirror, network configuration, etc.
Slave: shared state for all jenkins slaves.
Runner: shared state for all jenkins test runners
Builder: shared state for all jenkins test builders.
Master: shared state for all jenkins masters.

It is best to include changes in the highest level possible, ie don't put things that only apply to runners in base or slave, put them in runner.

Nothing in this hierarchy should overwrite something above it. So, if runner and builder both need a specific service, but configured differently there should not be a shared state in slave that is overwritten in one, instead runner and builder should each contain their own configuration of said service. This is in contrast to machine specific overwrites, which are usually used to modify an existing service.

### Partial Files

Whenever possible leave files that may need to be unique per machine (say /etc/fstab) unmanaged, and use an alternative that can be managed more easily (like systemd .mount and .automount files). This allows us to separate files that salt doesn't need to manage from those it does.


## Using the "dev" branch

We use a dev branch for testing changes on a single branch before merging them into the master.

The first thing to do is to update the `top.sls` file on the dev branch by adding a "dev" catagory:

```yaml
dev:
    '<matches only the hardware to test on>:
        - <the package to test (slave, base, etc)>
base:
    ...
```

Make sure that the match will only find the hardware to test on, and not multiple pieces of hardware.

Once you've done that, update the server with the following command: ```sudo salt-run fileserver.update```, which will pull from the git tree (it handles force pushes, so feel free). Then run ```sudo salt '<matches your hardware>' state.highstate saltenv="dev"``` It is very important to use ```saltenv="dev"```, otherwise you'll get errors.

Once everything is good, revert your changes to the top.sls file, and merge into master.
