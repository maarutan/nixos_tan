{pkgs, ...}: let
  flameshotWithWayland = pkgs.flameshot.override {
    useWaylandGrim = true;
  };
in {
  home.packages = with pkgs; [
    grim
    slurp
    flameshotWithWayland
  ];
}
