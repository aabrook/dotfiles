{
  imports = [
    ./sharedEnv.nix
  ];
  
  packageOverrides = pkgs: with pkgs; {
    homeEnv = pkgs.buildEnv {
      name = "homeEnv";
      paths = [
        alacritty
        stack
      ];
    };
  };
  allowUnfree = true;
}

