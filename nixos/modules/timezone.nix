{
  time = {
    timeZone = "Asia/Bishkek";
  };
  services = {
    timesyncd = {
      enable = true;
    };
  };
  networking.timeServers = ["pool.ntp.org" "ntp.nict.jp"];
}
