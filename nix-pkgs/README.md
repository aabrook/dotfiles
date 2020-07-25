# Setup

Install nix: https://nixos.org/nixos/nix-pills/install-on-your-running-system.html
Link the package: ln -l ~/.dotfiles/nix-pkgs/homeEnv.nix ./config.nix
Setup: nix-env -i homeEnv

https://nixos.org/nixpkgs/manual/#chap-packageconfig

For dotfiles
ln -s ~/.dotfiles/nix-pkgs ./.config/nixpkgs
Install home: https://github.com/rycee/home-manager