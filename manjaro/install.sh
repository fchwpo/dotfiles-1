#!/bin/sh
sudo ln -fs "$(readlink -f xinitrc)" ~/.xinitrc
sudo ln -fs "$(readlink -f Xmodmap)" ~/.Xmodmap

# timesync
timedatectl set-ntp true

# cgroups
#sudo ln -sf "$(readlink -f cgconfig.conf)" /etc/cgconfig.conf
#sudo ln -sf "$(readlink -f cgrules.conf)" /etc/cgrules.conf
#sudo systemctl start cgconfig
#sudo systemctl enable cgconfig
#sudo systemctl start cgrules
#sudo systemctl enable cgrules

# redshift
sudo pacman -Syy community/redshift
sudo ln -fs "$(readlink -f redshift.service)" /etc/systemd/system/redshift.service
sudo ln -fs "$(readlink -f redshift.conf)" ~/.config/redshift.conf
sudo systemctl start redshift
sudo systemctl enable redshift

#packages
sudo pacman -Syy fasd yaourt zip extra/unzip community/tldr extra/keychain extra/lxsession upower community/the_silver_searcher extra/imagemagick community/fzf extra/alsa-utils extra/pavucontrol extra/xorg-xinput community/npm community/xautolock openssh net-tools extra/python-pip extra/python2-pip extra/graphviz extra/gnu-netcat extra/vlc ruby qt4 xdot aria2 aria2 xf86-video-fbdev

yaourt -Syy aur/vlock-original  community/xlockmore aur/nvm
sudo pacman -Syy extra/xorg-clipboard
sudo pacman -Syy extra/xorg-xclipboard
sudo pacman -Syy xf86-video-intel
sudo pacman -Syy xf86-input-synaptics

yaourt -Syy aur/chromium-widevine
sudo pacman -Syy extra/pepper-flash
sudo pacman -Syy extra/xorg-xkill
sudo pacman -Syy extra/xfce4-screenshooter
sudo pacman -Syy xorg-xev
