kapo
====

_kapo_ is a small utility that leverages on Vagrant, VirtualBox, and
other tools, to make it easy to manage virtual machines.


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


## Miscellaneous commands

To list the available machines, as defined in your .kaporc:

```bash
$ kapo ls
```

To list the machines that are installed:

```bash
$ kapo li
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

