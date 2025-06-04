{pkgs, ...}: {
  # boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.firmware = with pkgs; [linux-firmware];
}
