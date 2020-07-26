{ pkgs, ... }:
let
  sharedEnv = [
        # git
        pkgs.brave
        pkgs.neovim
        pkgs.fzf
        pkgs.zsh
        pkgs.oh-my-zsh
        pkgs.jq
        pkgs.direnv

        pkgs.ag
        pkgs.thefuck
        pkgs.vscode
        pkgs.slack
      ];
in 
{
  allowUnfree =true;

  packageOverrides = pkgs:
  rec {
    homeEnv = pkgs.buildEnv {
      name = "homeEnv";
      paths = [
        pkgs.alacritty
        pkgs.stack
      ] ++ sharedEnv;
    };
    workEnv = pkgs.buildEnv {
      name = "workEnv";
      paths = [
        pkgs.gradle
        pkgs.sbt
        pkgs.coreutils
        pkgs.tree
        pkgs.itermS
      ] ++ sharedEnv;
    };
  };
}
