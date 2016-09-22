kapo
====

_kapo_ is a small utility that leverages on Vagrant, VirtualBox, and
other tools, to make it easier to manage virtual machines. The word
*kapo* is Esperanto for *head* (noun), hence the idea of control and
management.


## Installation

kapo uses [Nix](https://nixos.org/nix) underneath, to ensure that all
the run-time dependencies are met. To install Nix, if do not have it,
yet, run:

```bash
curl https://nixos.org/nix/install | bash
```

After you have installed Nix, copy the `kapo` script anywhere that is
accessible in the locations contained in the `$PATH` variable, for
example, `~/bin`:

```bash
cp kapo ~/bin
chmod +x ~/bin/kapo
```


## Basic usage

When no config files exist, kapo creates a default one in
`~/.kaporc`. The basic .kaporc defines the latest stable versions of
Ubuntu, Debian, and NixOS.

To fetch the latest stable version of Ubuntu:

```bash
$ kapo up ubuntu
```

To connect to it via SSH:

```bash
$ kapo ssh ubuntu
```

To check its status:

```bash
$ kapo status ubuntu
```

To shut the machine down, run:

```bash
$ kapo down ubuntu
```

To remove the machine’s entry:

```bash
$ kapo delete ubuntu
```

To add a machine spec to the configuration, giving it a name:

```bash
$ kapo add centos=centos/7
```

To delete the above spec:

```bash
$ kapo remove centos=centos/7
```

To list the installed machines:

```bash
$ kapo machines
```

To list the available boxes, as defined in your configuration:

```bash
$ kapo boxes
```


## Config file

The `.kaporc` file is just a simple file that gets `source`d by the
script. The format is:

```bash
vm_name=box_name
```

Where `vm_name` stands for the alias to use with kapo and `box_name`
stands for boxes that are found in
[atlas.hashicorp.com/boxes/search](https://atlas.hashicorp.com/boxes/search)

For example, to define an OpenBSD box:

```bash
openbsd=tmatilai/openbsd-5.6
```
