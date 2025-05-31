{pkgs, ...}: {
  home.packages = [
    (pkgs.python314.withPackages (ppkgs: [
      ppkgs.screeninfo
    ]))
  ];
}
