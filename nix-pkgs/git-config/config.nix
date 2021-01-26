{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
  ];
  
  programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;
    userName = "Aaron Abrook";
    userEmail = "aabrook@gmail.com";
    aliases = {
      # basics
      co =     "checkout";
      cl =     "clone";
      ci =     "commit";
      br =     "branch";
      r =      "reset";
      cp =     "cherry-pick";
      gr =     "grep -Ii";
      # tweak defaults
      diff =   "diff --word-diff";
      branch = "branch -ra";
      grep =   "grep -Ii";
      bra =    "branch -ra";
      ai =     "add --interactive";
      # grep on filename";
      f =      "!git ls-files | grep -i";
      # commit
      cm =     "commit -m";
      cma =    "commit -a -m";
      ca =     "commit --amend";
      amend =  "commit --amend --no-edit";
      caa =    "commit -a --amend -C HEAD";
      aa =     "add .";
      p =      "push";
      po =     "push origin";
      # Pretty Printing
      lg =     "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches";
      # Useful
      recent = "!git for-each-ref --color=always --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))' | less -r";
    };
    extraConfig = {
      core.editor = "nvim";
    };
  };
}
