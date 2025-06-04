{pkgs, ...}: {
  # boot.kernelPackages = pkgs.linuxPackages_zen;
  # loot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelPackages = pkgs.linuxPackages_lts;

  hardware.firmware = with pkgs; [linux-firmware];
  hardware.enableAllFirmware = true;

  boot.kernelParams = ["iwlwifi.disable_11ax=1"];
}
