{
  lib,
  hostname,
  ...
}: {
  networking = {
    hostName = hostname;
    # hostName = lib.mkForce "iron_AsusTufGamingA15";

    networkmanager = {
      enable = true;
    };

    proxy = {
      noProxy = "127.0.0.1,localhost,internal.domain";
    };

    # firewall = {
    #   enable = true;
    #   allowedTCPPorts = [ ... ];
    #   allowedUDPPorts = [ ... ];
    # };
  };
}
