{
  packageOverrides = pkgs: with pkgs; {
    homeEnv = pkgs.buildEnv {
      name = "homeEnv";
      paths = [
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

        stack
      ];
    };
  };
  allowUnfree = true;
}

