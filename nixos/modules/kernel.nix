{pkgs, ...}: {
  # boot.kernelPackages = pkgs.linuxPackages_zen;
  # boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelPackages = pkgs.linuxPackagesFor pkgs.linux_xanmod_lts;
  hardware.firmware = with pkgs; [linux-firmware];
}
