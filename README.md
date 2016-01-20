copa
====

_copa_ is a small utility that leverages on Vagrant, VirtualBox, and
other tools, to make it easy to manage virtual machines.


## Installation

Simply copy the `copa` script anywhere that is accessible in the
locations contained in the `$PATH` variable.


## Prequisites

The following programs are needed to run copa. Please consult your
systems package manager on how to obtain them.

* Vagrant
* VirtualBox


## Basic Usage

For copa to run, it needs to read a config file. It reads first from
`/etc/coparc`, then from `~/.coparc`. To create a basic coparc, run:

```
$ copa mr
```

The basic .coparc defines the latest stable versions of NixOS, Ubuntu,
and Debian.

To install the latest stable version of NixOS, run:

```
$ copa nixos up
```

To connect to it via SSH, run:

```
$ copa nixos ssh
```

To check its status, run:

```
$ copa nixos status
```

To shut the machine down, run:

```
$ copa nixos down
```

To remove the machine's entry:

```
$ copa nixos rm
```


## Misc Commands

To list the available machines, as defined in your .coparc, run:

```
$ copa la
```

To list the machines that are installed, run:

```
$ copa li
```


## RC File

The `.coparc` file is just a simple file that gets `source`d by the
script. The format is:

```
vm_name=box_name
```

Where `vm_name` stands for the alias to use with copa and `box_name`
stands for boxes that are found in
[https://atlas.hashicorp.com/boxes/search](https://atlas.hashicorp.com/boxes/search)

