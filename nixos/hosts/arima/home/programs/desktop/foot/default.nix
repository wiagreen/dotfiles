{ pkgs, ... }:
{
  programs.foot = {
    enable = true;
    server.enable = false;
    package = pkgs.foot;
    settings = {
      main = {
        app-id = "Terminal";
        title = "Terminal";
        font = "JetBrainsMono NerdFont:Bold:size=14.5";
        pad = "15x15";
      };
      colors = {
        foreground = "c7ccd1";
        background = "070D0B";

        regular0 = "1c2023";
        regular1 = "c7ae95";
        regular2 = "95c7ae";
        regular3 = "aec795";
        regular4 = "ae95c7";
        regular5 = "c795ae";
        regular6 = "95aec7";
        regular7 = "c7ccd1";

        bright0 = "747c84";
        bright1 = "c7ae95";
        bright2 = "95c7ae";
        bright3 = "aec795";
        bright4 = "ae95c7";
        bright5 = "c795ae";
        bright6 = "95aec7";
        bright7 = "f3f4f5";

        alpha = 0.98;
      };
    };
  };
}
