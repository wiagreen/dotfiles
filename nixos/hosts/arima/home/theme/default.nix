{ config, pkgs, ... }:
{
  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgs.graphite-gtk-theme;
      name = "Graphite-Dark";
    };

    iconTheme = {
      package = pkgs.tela-icon-theme;
      name = "Tela-black";
    };

    font = {
      name = "JetBrainsMono";
      size = 14;
    };
  };
}
