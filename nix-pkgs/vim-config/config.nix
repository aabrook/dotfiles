{ config, pkgs,  ...}:

let
  # cf. https://nixos.wiki/wiki/Vim#Adding_new_plugins 
  customPlugins = {
    wstrip = pkgs.vimUtils.buildVimPlugin {
      name = "wstrip";
      # https://github.com/tweekmonster/wstrip.vim
      src = (pkgs.fetchFromGitHub {
        owner = "tweekmonster";
        repo = "wstrip.vim";
        rev = "028265";
        sha256 = "0rx1vxibnawbiwawgbbajgpgss9fcv6nr7f91s24ljl8869gc507";
      });
    };
  };
in
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    configure = {
      packages.myVimPackage = with pkgs.vimPlugins; {
        # Loaded on launch
        start = [ fzf-vim ack-vim bufexplorer nerdtree fzfWrapper vim-nix fugitive ];
        # Manually loadable by calling `:packadd $plugin-name
        opt = [ ];
      };

      vam.knownPlugins = pkgs.plug.vimPlugins // customPlugins;
      vam.pluginDictionaries = [
      	{ names = [
          "vim-auto-save"
          "nerdtree"
          "wstrip"
          "vim-fugitive"
          "fzf-vim"
          "ack-vim"
          "bufexplorer"
        ];}
      ];
      customRC = 
        import ./default.nix {} + import ./mappings.nix {} + import ./extensions.nix {};
    };
  };
}
