# copa

_copa_ is a small utility that leverages on Vagrant, VirtualBox, and
other tools, to make it easy to manage virtual machines.


## Installation

Simply copy the `copa` script anywhere that is accessible in the
locations contained in the `$PATH` variable.


## Basic Usage

For copa to run, it needs to read a config file. It reads first from `/etc/coparc`, then from `~/.coparc`. To create a basic coparc, run:

```
$ copa mr
```

The basic .coparc defines the latest stable versions of NixOS, Ubuntu,
and Debian.



## RC Files
