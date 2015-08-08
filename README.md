# make_myenv
This is my personal Makefile to configure my Integrated Development Environment.

#Example of use:
```shell
$ make myenv
```

#Console output:
```
brew install macvim
Warning: macvim-7.4-77 already installed
brew linkapps macvim

Linking /usr/local/opt/macvim/MacVim.app to /Applications.
brew install postgresql
Warning: postgresql-9.4.4 already installed
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
/Users/ecamalionte/Library/LaunchAgents/homebrew.mxcl.postgresql.plist -> /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist

brew install memcached
Warning: memcached-1.4.24 already installed
ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents
/Users/ecamalionte/Library/LaunchAgents/homebrew.mxcl.memcached.plist -> /usr/local/opt/memcached/homebrew.mxcl.memcached.plist

brew install mongodb
Warning: mongodb-3.0.5 already installed

brew install redis
Warning: redis-3.0.3 already installed
```
