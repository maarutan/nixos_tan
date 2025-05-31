{
  pkgs,
  lib,
  ...
}: {
  console = {
    font = "${pkgs.terminus_font}/share/consolefonts/ter-132n.psf.gz";
    packages = with pkgs; [terminus_font];
    keyMap = lib.mkForce "us"; # en_US.UTF-8/UTF-8
    useXkbConfig = true;
  };
}
