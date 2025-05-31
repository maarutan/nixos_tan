{
  user,
  pkgs,
  ...
}: {
  programs = {
    zsh.enable = true;
    # bash.enable = true;
  };

  # Enable zsh as default shell for the user
  users.users.${user}.shell = pkgs.zsh;
  # users.users.${user}.shell = pkgs.bash;
}
