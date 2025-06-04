{pkgs, ...}: {
  boot.kernelPackages = pkgs.linuxPackages_zen;
  # loot.kernelPackages = pkgs.linuxPackages_latest;

  hardware.firmware = with pkgs; [linux-firmware];
}
