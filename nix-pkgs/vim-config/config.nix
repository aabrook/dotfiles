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
    configure = {
      packages.myVimPackage = with pkgs.vimPlugins; {
        # Loaded on launch
        start = [ ];
        # Manually loadable by calling `:packadd $plugin-name
        opt = [ ];
      };

      vam.knownPlugins = pkgs.vimPlugins // customPlugins;
      vam.pluginDictionaries = [
        { name = "vim-auto-save"; }
        { name = "nerdtree"; }
        { name = "wstrip"; }
        { name = "vim-fugitive"; }

      ];
      customRC = 
        import ./default.nix {} + import ./mappings.nix {} + import ./extensions.nix {};
    };
  };
}