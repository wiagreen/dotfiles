{ pkgs, ... }:
{
  services.mako = {
    enable = true;

    anchor = "top-center";
    layer = "overlay";

    width = 300;
    height = 100;

    margin = "10";
    padding = "15";
    borderSize = 3;
    borderRadius = 12;
    borderColor = "#11111b";

    icons = true;
    maxIconSize = 48;

    maxVisible = 5;
    markup = true;

    font = "JetBrainsMono 13";
    textColor = "#e0e0e0";

    backgroundColor = "#191919";

    extraConfig = ''
      text-alignment=center

      [urgency=low]
      border-color=#11111b
      default-timeout=2000

      [urgency=normal]
      border-color=#11111b
      default-timeout=5000

      [urgency=high]
      border-color=#f38ba8
      text-color=#f38ba8
      default-timeout=0

      [category=mpd]
      border-color=#f9e2af
      default-timeout=2000
      group-by=category
    '';
  };
}
