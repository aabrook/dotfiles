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
        # Find the sha
        # sha256 = "1cx0bj1c1ynzqqvjx0rrbkbhkql6zs11k6sbpbn7gdch4437cjzs";
      }); # + "/plugins/nvim";

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
      ];
      customRC = 
        import ./default.nix {} + import ./mappings.nix {};
      # plug.plugins = with pkgs.vimPlugins; [
      #   nerdtree
      # ];
    };
  };
}