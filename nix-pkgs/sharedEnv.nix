{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "workEnv";
      paths = [
        git
        brave
        neovim
        fzf
        zsh
        oh-my-zsh
        jq
        direnv

        ag
        thefuck
        vscode
        slack
      ];
    };
  }
};
