{
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  };

  services = {
    xserver = {
      enable = true;
    };
  };
}
