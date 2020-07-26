{
  programs.neovim = {
    enable = true;
    plugins = [
      "pkgs.auto-save"
      "pkgs.bufexplorer"
      "pkgs.editor"
      "pkgs.nerdtree"
      "pkgs.wstrip"
    ];
  };
}