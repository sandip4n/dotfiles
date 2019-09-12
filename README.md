# Prerequisites
## Editor
```
sudo dnf -y install neovim global ctags cscope
```

## Shell
```
sudo dnf -y install fish fzf
sudo usermod -s $(which fish) $USER
```

## Font
```
sudo dnf -y install mozilla-fira-mono-fonts fontforge
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
cd nerd-fonts
for f in /usr/share/fonts/mozilla-fira/FiraMono-*.otf
	fontforge -script font-patcher $f -c -q -out ~/.local/share/fonts
end
fc-cache -f
gsettings set org.gnome.desktop.interface monospace-font-name 'FiraMono Nerd Font Medium 11'
```

# Installation
```
./install
```
