# dotfiles for Linux

configuration of tools used on Linux servers

## Tmux config

Here is how I setup tmux on my Lunix servers. I’m using the `tpm` Plugin Manager.

```
# Crete the config file
touch ~/.tmux.conf

# Make the following path
mkdir ~/.tmux/
mkdir ~/.tmux/plugins/

# run
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpmi

# Finally, here is the config file that needs to be on the root home folder
```

If you clone this repo, you wont have to create the `.tmux.conf` file, it would already be created. you would have to create the folder, clone the repo and install all the packages.

## NeoVIM

To setup and configure, neoVIM, follow this (repo)[https://github.com/fanpero87/neovim-setup.git]

## Vim config

Here is the setup for vim on my Linux servers.

```
# Crete the config file
touch ~/.vimrc

# Make the following path
mkdir ~/.vim/
mkdir ~/.vim/autoload/

# run
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

If you clone this repo, you wont have to create the `.vimrc` file, it would already be created. You would have to creater the folder, download the plugin manager and install all the packages.

## Alacritty

To install alacrity run the following commands

```
sudo apt update -y && sudo apt upgrade -y
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update -y
sudo apt install alacritty -y
```

To configure the new terrminal, do the following

```
mkdir ~/.config/alacritty
touch ~/.config/alacritty/alacritty.toml
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme.git ~/.config/alacritty/themes

```
