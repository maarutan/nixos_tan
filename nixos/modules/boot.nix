{
  boot = {
    loader = {
      grub2-theme = {
        enable = true;
        theme = "stylish";
        footer = true;
        customResolution = "1600x900";
      };

      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
      };

      efi = {
        efiSysMountPoint = "/boot";
        canTouchEfiVariables = true;
      };
    };
  };
}
