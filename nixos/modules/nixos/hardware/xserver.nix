{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;

    xkb.layout = "us";
    xkb.variant = "";

    displayManager = {
      sddm = {
        enable = true;
      };
    };
  };
}
