{pkgs, ...}: {
  # boot.kernelPackages = pkgs.linuxPackages_zen;
  # boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelPackages = pkgs.linuxPackages_6_4;
  hardware.firmware = with pkgs; [linux-firmware];
}
