{ pkgs, ... }:
{
  imports = [
    ./programs/desktop/waybar
    ./programs/desktop/hyprland
    ./programs/desktop/mako
    ./programs/desktop/wofi
    ./programs/desktop/swaylock
    ./programs/desktop/foot
    
    ./programs/terminal/tmux
    ./programs/terminal/shell

    ./dev 
    ./theme
  ];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    stateVersion = "23.11";
    packages = with pkgs; [
      telegram-desktop
      xfce.mousepad
      qbittorrent
      pavucontrol
      libnotify
      cliphist
      zathura
      pamixer
      lutgen
      slurp
      grim
      cmus
      mpv
      imv
      
      (discord.override {
        withVencord = true;
      })
    ];
  };
  
  nixpkgs.config = {
    allowUnfree = true;
  };

  programs.home-manager.enable = true;
}
