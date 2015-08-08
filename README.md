# make_myenv
This is my personal Makefile to configure my Development Environment in seconds.

Content of this Makefile:
```
homebrew
  
dotfiles
macvim
ack
	
postgresql
memcached
mongodb
redis
sqlserver-deps
	
haskell
ruby
```

Example of use:
```shell
$ make myenv
```

Console output:
```shell
ruby -e ""

sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"
YADR is already installed
echo "prompt minimal" > ~/.zsh.after/prompt.zsh

brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit
Warning: macvim-7.4-77 already installed
brew linkapps macvim
Linking /usr/local/opt/macvim/MacVim.app to /Applications.

brew install ack
Warning: ack-2.14 already installed

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

brew install freetds
Warning: freetds-0.95.18 already installed

brew install haskell-stack
Warning: haskell-stack-0.1.2.0 already installed

brew install cabal-install
Warning: cabal-install-1.22.6.0 already installed

brew install rbenv
Warning: rbenv-0.4.0 already installed
```


