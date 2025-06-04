{pkgs, ...}: {
  # boot.kernelPackages = pkgs.linuxPackages_zen;
  # boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelPackages = pkgs.linuxPackages_xanmod_stable;
  hardware.firmware = with pkgs; [linux-firmware];
}
