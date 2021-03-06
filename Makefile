fix-docker:
	sudo gpasswd -a $$USER docker

install: fix-docker
	mkdir -p ~/.vim/{swap,undodir,backup,vim-plug}
	ln -sf /data/.{armory,bitcoin,gnupg,password-store,ssh} -t ~
	ln -sf /data/{book,irclogs,resources} -t ~
	ln -sf /data/{document,download,junk,movie,music,picture,video,proj} -t ~
	mkdir -p /data/.ssh
	stow --target ~/.ssh ssh
	mkdir -p ~/.config/systemd/user
	stow --target ~ git
	stow --target ~ mbsync
	stow --target ~ wm
	stow --target ~ irc
	stow --target ~ shell
	rm -f ~/.config/mimeapps.list
	stow --target ~/.config alacritty
	stow --target ~/.config dunst
	stow --target ~/.config desktop
	stow --target ~/.config greenclip
	stow --target ~/.config i3
	stow --target ~/.config mpd
	stow --target ~/.config neomutt
	stow --target ~/.config polybar
	stow --target ~/.config powerline
	stow --target ~/.config ranger
	stow --target ~/.config rofi
	stow --target ~/.config fontconfig
	stow --target ~/.config/systemd/user/ units
	#stow --target ~/.lein lein
	stow --target ~/.config nvim
	mkdir -p ~/bin
	stow --target ~/bin script
	stow --target ~/.config/pgcli pgcli
