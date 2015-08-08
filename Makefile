homebrew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

macvim:
	brew install macvim
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

myenv: homebrew macvim postgresql memcached mongodb redis dotfiles
	homebrew
	macvim
	postgresql
	memcached
	mongodb
	redis
	dotfiles
