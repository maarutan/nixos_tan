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
      nemo

      # ( CLI / TUI ) utils
      ly
      psmisc
      wget
      wl-clipboard # clipboard manager for ( WAYLAND )
      cliphist # clipboard history for ( WAYLAND )
      dunst
      neovim # editor ( tui )
      yazi # file manager ( tui )
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
      wiki-tui
      youtube-tui
      obs-studio
      mpv
      ffmpeg

      # Coding stuff
      go
      gcc
      nodejs_24
      rustup
      git
      python314
      # python311
      lua

      # WM stuff

      waybar # only for (WAYLAND)
      hyprswitch # only for (WAYLAND + Hyprland)
      libsForQt5.xwaylandvideobridge
      libnotify
      xdg-desktop-portal-gtk # only for (WAYLAND)
      xdg-desktop-portal-hyprland # only for (WAYLAND + Hyprland)
    ]
    ++ (with nixpkgs_unstable; [
      # Desktop apps
      rofi

      # CLI utils
      flameshot
    ]);
}
