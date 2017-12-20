# SYNOPSIS

Outthentic plugin.

Build packages from AUR for archlinux

# INSTALL

    # sparrow plg install aur-builder

# USAGE
## Manually
    
    # sparrow plg run aur-builder --param list="( zef yaourt )"

## Via Sparrowdo
    
    $ cat sparrofile

    task_run 'install zef', 'aur-builder', %(
      list => ( 'chef-dk', 'yaourt' ),
      user => 'vagrant',
      build_root => '/home/vagrant/aur-build'
    );

    task_run 'install zef', 'aur-builder', %(
      list => ( 'zef' ),
      user => 'vagrant',
      output => '/tmp/zef'
    );

# Parameters
## list
list of your packages. Required.

## user

## build_root

## install

## output
