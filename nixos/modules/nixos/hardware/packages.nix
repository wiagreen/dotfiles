{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gnome.file-roller
    gnome.nautilus
    google-chrome
    brightnessctl
    home-manager
    python3
    lazygit
    pfetch
    neovim
    unzip
    wget
    curl
    tree
    git
    bat
    jq
    gh
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    font-awesome
    nerdfonts
  ];

  nixpkgs.config.allowUnfree = true;

  programs = {
    fish.enable = true;
    file-roller.enable = true;

    gnupg = {
      agent = {
        enable = true;
        enableExtraSocket = true;
        pinentryFlavor = "curses";
      };
    };
  };
}
