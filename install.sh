#install nix package manager
curl -L https://nixos.org/nix/install | sh

#source nix
. ~/.nix-profile/etc/profile.d/nix.sh

#install packages
nix-env -iA \
  nixpkgs.zsh \
  nixpkgs.antibody \
  nixpkgs.git \
  nixpkgs.neovim \
  nixpkgs.tmux \
  nixpkgs.stow \
  nixpkgs.bat \
  nixpkgs.gcc \
  nixpkgs.gdb \
  nixpkgs.mysql80 \
  nixpkgs.sqlite \
  nixpkgs.python38 \

#stow
stow git
stow zsh
stow nvim
#stow ssh
stow tmux

#add zsh to valid login shell
command -v zsh | sudo tee -a /etc/shells

#use zsh as a default shell
sudo chsh -s $(which zsh) $USER

#bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

#install neovim plugins
nvim --headless +PlugInstall +qall

#install node
#nvm install node
