{
  allowUnfree =true;
  packageOverrides = pkgs:
  rec {
    homeEnv = pkgs.buildEnv {
      name = "homeEnv";
      paths = with pkgs; [
        git
        vim
        brave
        neovim
        fzf
        zsh
        oh-my-zsh
        alacritty
        ag
        thefuck
        vscode
      ];
    };
    workEnv = pkgs.buildEnv {
      name = "workEnv";
      paths =  with pkgs; [
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
  };
}
