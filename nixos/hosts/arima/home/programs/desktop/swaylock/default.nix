{ pkgs, ... }:
{
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      daemonize = true;
      show-failed-attempts = true;
      clock = true;
      screenshot = true;
      effect-blur= "6x6";
      effect-vignette = "0.65:1";
      color = "191919";
      font = "JetBrains Mono Nerd Font";
      indicator = true;
      indicator-radius = 120;
      indicator-thickness = 16;
      line-color = "191919";
      ring-color = "191919";
      inside-color = "191919";
      key-hl-color = "d3869b";
      separator-color = 00000000;
      text-color = "e0e0e0";
      text-caps-lock-color = "";
      line-ver-color = "83a598";
      ring-ver-color = "83a598";
      inside-ver-color = "83a598";
      text-ver-color = "e0e0e0";
      text-wrong-color = "191919";
      ring-wrong-color = "fb4934";
      inside-wrong-color = "fb4934";
      line-wrong-color = "fb4934";
      text-clear-color = "e0e0e0";
      inside-clear-color = "8ec07c";
      ring-clear-color = "8ec07c";
      line-clear-color = "8ec07c";
      grace = 0.5;
      grace-no-mouse = true;
      grace-no-touch = true;
      datestr = "%a, %B %e";
      timestr = "%I:%M %p";
      fade-in = 0.15;
      ignore-empty-password = true;
    };
  };
}
