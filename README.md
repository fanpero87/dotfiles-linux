# dotfiles for Linux (Ubuntu)

Im using the `stow` command to manage all the dotfiles on a Linux server. Im also using this [video](https://www.youtube.com/watch?v=y6XCebnB9gs) as reference.

To use this repo, do the following

```
# Install the Stow package
sudo apt install stow

# Clone the repo
git clone https://github.com/fanpero87/dotfiles-linux.git ~/dotfiles

# Use stow to create the Symlinks
cd ~/dotfiles/
stow .
```

Below, there is a description of the software on this repo

## Starship

If you cloned this repo, you wont have to create the `.starship.toml` file, it would already be created.

## Tmux config

If you cloned this repo, you wont have to create the `.tmux.conf` file, it would already be created. you would have to create the folder, clone the repo and install all the packages.

```
# Make the following folder
mkdir ~/.tmux/
mkdir ~/.tmux/plugins/

# Clone the repo for the plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

## NeoVIM

To setup and configure, neoVIM, follow this [repo](https://github.com/fanpero87/neovim-setup.git)

## Vim config

If you clone this repo, you wont have to create the `.vimrc` file, it would already be created. You would have to creater the folder, download the plugin manager and install all the packages.

```
# Make the following folder
mkdir ~/.vim/
mkdir ~/.vim/autoload/

# Clone the repo for the plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

## Alacritty

If you clone this repo, you wont have to create the `alacritty.toml` file, it would already be created. You only have to clone the themes repo.

```
# Install the package
sudo apt update -y && sudo apt upgrade -y
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update -y
sudo apt install alacritty -y

# Clone the theme repo
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme.git ~/.config/alacritty/themes

```
