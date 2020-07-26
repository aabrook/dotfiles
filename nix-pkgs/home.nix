{ config, pkgs,  ...}:

{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

  imports = [
    ./git-config/config.nix
  ];
  
  # home.file = {
  #   ".gitconfig".text = ''
  #     [user]
	#       name = aabrook
	#       email = aabrook@gmail.com
  #     [alias]
  #       # basic {{{
  #       st = status -s
  #       cl = clone
  #       ci = commit
  #       co = checkout
  #       br = branch
  #       r = reset
  #       cp = cherry-pick
  #       gr = grep -Ii
  #       # }}}
  #       # tweak defaults {{{
  #       diff = diff --word-diff
  #       branch = branch -ra
  #       grep = grep -Ii
  #       bra = branch -ra
  #       ai = add --interactive
  #       # grep on filename
  #       f = "!git ls-files | grep -i"
  #       # }}}
  #       # commit {{{
  #       cm = commit -m
  #       cma = commit -a -m
  #       ca = commit --amend
  #       amend = commit --amend --no-edit
  #       caa = commit -a --amend -C HEAD
  #       aa = add .
  #       p = push
  #       po = push origin
  #       # }}}
  #       # pretty printing {{{
  #       lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches
  #       # }}}
  #   '';
  # };
}
