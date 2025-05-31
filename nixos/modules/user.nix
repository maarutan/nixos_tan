{
  pkgs,
  user,
  ...
}: {
  users.users.${user} = {
    isNormalUser = true;
    extraGroups = [
      "wheel" # Enable ‘sudo’ for the user.
      "power"
      "networkmanager"
      "video"
      "input"
      "audio"
      "storage"
    ];
  };

  # services.getty.autologinUser = user;
}
