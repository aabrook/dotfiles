{
  imports = [
    ./sharedEnv.nix
  ];

  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "workEnv";
      paths = [
        gradle
        sbt
        coreutils
        tree
        itermS
      ];
    };
  }
};
