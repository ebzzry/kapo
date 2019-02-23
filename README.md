kapo
====


<a name="toc">Table of contents</a>
--------------------------------

- [Overview](#overview)
- [Installation](#installation)
- [Basic usage](#basicusage)
- [Boxes](#boxes)
  - [Standard boxes](#standardboxes)
  - [Custom boxes](#standardboxes)
- [Configuration file](#configurationfile)


<a name="overview">Overview</a>
-------------------------------

_kapo_ is a small utility that leverages on Vagrant, VirtualBox, and other tools, to make it easier
to manage virtual machines. The word *kapo* is Esperanto for *head* (noun), hence the idea of
control and management.


<a name="installation">Installation</a>
---------------------------------------

Simply copy `kapo` into `~/bin/` or `/usr/local/bin/` and everything should work.

    cp kapo ~/bin
    chmod +x ~/bin/kapo


<a name="basicusage">Basic usage</a>
------------------------------------

When no config files exist, kapo creates a default one in `~/.kaporc`. The basic .kaporc defines the
latest stable versions of Ubuntu, Debian, and NixOS.

To fetch the latest stable version of Ubuntu:

    $ kapo up ubuntu

To connect to it via SSH:

    $ kapo ssh ubuntu

To display its date:

    $ kapo ssh coreos date

To display its uname:

    $ kapo ssh coreos -- uname -a

To check its status:

    $ kapo status ubuntu

To shut the machine down, run:

    $ kapo down ubuntu

To remove the machine’s entry:

    $ kapo delete ubuntu

To add a machine spec to the configuration:

    $ kapo add centos=centos/7

To delete the above spec from the configuration:

    $ kapo remove centos=centos/7

To list the installed machines:

    $ kapo machines

To list the available boxes, as defined in your configuration:

    $ kapo boxes


<a name="boxes">Boxes</a>
-------------------------

### <a name="standardboxes">Standard boxes</a>

To add boxes that are official supported, for example [laravel/homestead](https://app.vagrantup.com/laravel/boxes/homestead), run:

    kapo add laravel=laravel/homestead

To bring it up, run:

    kapo up laravel


### <a name="customboxes">Custom boxes</a>

Let’s presume that you already have a project with a Vagrantfile in it, which lives in:

    ~/Desktop/work/bananas/vagrant/Vagrantfile

To add its entry to kapo, run:

    kapo add bananas=DUMMY

Create a link:

    kapo link ~/Desktop/work/bananas/vagrant bananas

Then, bring it up:

    kapo up bananas


<a name="configurationfile">Configuration file</a>
--------------------------------------------------

The `.kaporc` file is just a simple file that gets `source`d by the
script. The format is:

```bash
vm_name=box_name
```

Where `vm_name` stands for the alias to use with kapo and `box_name` stands for boxes that are found
in [https://app.vagrantup.com/boxes/search](https://app.vagrantup.com/boxes/search).
