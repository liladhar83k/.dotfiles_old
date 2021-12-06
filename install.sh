#install nix package manager
curl -L https://nixos.org/nix/install | sh

#source nix
. ~/.nix-profile/etc/profile.d/nix.sh

#install packages
nix-env -iA \
  nixpkgs.git \
  nixpkgs.neovim \
  nixpkgs.tmux \
  nixpkgs.stow \
  nixpkgs.bat \
  nixpkgs.gcc \
  nixpkgs.gdb \

#stow
stow git
stow nvim
stow ssh
stow tmux

#aliases
grep -qxF "alias ls='ls -la'" ~/.bashrc || echo "alias ls='ls -la'" >> ~/.bashrc
grep -qxF "alias vi='nvim'" ~/.bashrc ||  echo "alias vi='nvim'" >> ~/.bashrc
grep -qxF "alias vim='nvim'" ~/.bashrc || echo "alias vim='nvim'" >> ~/.bashrc

#install neovim plugins
nvim --headless +PlugInstall +qall
