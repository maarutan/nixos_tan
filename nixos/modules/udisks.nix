{
  services.udisks2.enable = true;
  security.polkit.enable = true;
  security.polkit.extraConfig = ''
    polkit.addRule(function(action, subject) {
      if (subject.isInGroup("wheel") &&
          action.id.startsWith("org.freedesktop.udisks2.")) {
        return polkit.Result.YES;
      }
    });
  '';
}
