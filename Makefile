install: install-sh install-zsh install-git install-scripts install-screenlayouts install-x install-i3 install-i3blocks

install-sh:
	rm -f ~/.myprofile
	ln -s `pwd`/sh/myprofile ~/.myprofile

install-zsh:
	rm -f ~/.zshrc
	rm -rf ~/.zsh-custom
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/custom ~/.zsh-custom

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-scripts:
	rm -f ~/.scripts/brightness.sh
	rm -f ~/.scripts/cpu-temperature.sh
	mkdir -p ~/.scripts
	ln -s `pwd`/scripts/brightness.sh ~/.scripts/brightness.sh
	ln -s `pwd`/scripts/cpu-temperature.sh ~/.scripts/cpu-temperature.sh

install-screenlayouts:
	rm -f ~/.screenlayouts/laptop.sh
	rm -f ~/.screenlayouts/home.sh
	rm -f ~/.screenlayouts/s.sh
	mkdir -p ~/.screenlayouts
	ln -s `pwd`/screenlayouts/laptop.sh ~/.screenlayouts/laptop.sh
	ln -s `pwd`/screenlayouts/home.sh ~/.screenlayouts/home.sh
	ln -s `pwd`/screenlayouts/s.sh ~/.screenlayouts/s.sh

install-x:
	rm -f ~/.xsessionrc
	rm -f ~/.Xresources
	ln -s `pwd`/x/xsessionrc ~/.xsessionrc
	ln -s `pwd`/x/Xresources ~/.Xresources

install-i3:
	mkdir -p ~/Pictures/Screenshots
	rm -f ~/Pictures/Wallpapers/wallpaper.png
	mkdir -p ~/Pictures/Wallpapers
	ln -s `pwd`/wallpaper.png ~/Pictures/Wallpapers/wallpaper.png
	rm -f ~/.config/i3/config
	mkdir -p ~/.config/i3
	ln -s `pwd`/i3/config ~/.config/i3/config
	rm -f ~/.config/i3status/config
	mkdir -p ~/.config/i3status
	ln -s `pwd`/i3/i3status/config ~/.config/i3status/config

install-i3blocks:
	rm -f ~/.i3blocks.conf
	ln -s `pwd`/i3/i3blocks/config ~/.i3blocks.conf
