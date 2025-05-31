{
  pkgs,
  nixpkgs_unstable,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs;
    [
      # Desktop apps
      kitty
      firefox
      pavucontrol
      nwg-look
      telegram-desktop

      # CLI utils
      ly
      psmisc
      wget
      wl-clipboard # clipboard manager for ( WAYLAND )
      cliphist # clipboard history for ( WAYLAND )
      dunst
      neovim
      yazi
      ripgrep
      pulseaudio
      brightnessctl
      swww
      bc
      figlet
      fastfetch
      terminus_font
      ascii-image-converter
      bluetui
      ouch
      neofetch
      trash-cli
      mediainfo
      imagemagick
      fzf
      bat
      eza
      zoxide
      zip
      grim
      slurp
      unzip

      # Coding stuff
      go
      gcc
      nodejs_24
      rustup
      git
      python314
      lua

      # WM stuff
      waybar
      libsForQt5.xwaylandvideobridge
      libnotify
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ]
    ++ (with nixpkgs_unstable; [
      # Desktop apps
      rofi

      # CLI utils
      flameshot
    ]);
}
