{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "workEnv";
      paths = [
        git
        vim
        brave
        neovim
        fzf
        zsh
        oh-my-zsh
        jq
        direnv

        gradle
        sbt
        coreutils

        thefuck
        tree
        ag
        iterm
        vscode
      ];
    };
  }
};
