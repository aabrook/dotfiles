{ config, pkgs,  ...}:

{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

  imports = [
    ./git-config/config.nix
    ./vim-config/config.nix
  ];
}
