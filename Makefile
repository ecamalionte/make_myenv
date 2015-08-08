homebrew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

macvim:
	brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit
	brew linkapps macvim

postgresql:
	brew install postgresql
	ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

memcached:
	brew install memcached
	ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents

mongodb:
	brew install mongodb

redis:
	brew install redis

dotfiles:
	sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"
	echo "prompt minimal" > ~/.zsh.after/prompt.zsh

ruby:
	brew install rbenv

haskell:
	brew install haskell-stack
	brew install cabal-install

ack:
	brew install ack

sqlserver-deps:
	brew install freetds

myenv: homebrew macvim postgresql memcached mongodb redis dotfiles haskell ruby ack sqlserver-deps
	homebrew
	macvim
	postgresql
	memcached
	mongodb
	redis
	dotfiles
	haskell
	ruby
	ack
	sqlserver-deps
