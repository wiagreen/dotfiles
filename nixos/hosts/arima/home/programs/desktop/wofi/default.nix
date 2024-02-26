{ pkgs, ... }:
{
  programs.wofi = {
    enable = true;
    package = pkgs.wofi;
    settings = {
      width = "35%";
      height = "40%";

      no_actions = true;
      hide_scroll = true;

      columns = 1;
      image_size = false;
      prompt = "type";

      insensitive = true;
      layer = "overlay";

      show = "drun";
      mode = "show";
    };

    style = ''
      @define-color fg #e0e0e0;
      @define-color bg #191919;

      * {
        all: unset;
        font-family: "JetBrainsMono Nerd Font";
        font-weight: bold;
        font-size: 18px;
      }

      window {
        background-color: rgba(18, 18, 18, 1.0);
        border: 3px solid rgba(128, 128, 128, 0.25);
        border-radius: 12px;
      }

      #entry {
        color: #808080;
        padding: 16px;
      }

      #entry:selected {
        color: #f5f5f5;
        padding-left: 24px;
      }

      #input {
        padding: 12px;
        margin: 6px;
      }

      image {
        color: #505050;
        padding-left: 2px;
        padding-right: 24px;
      }
    '';
  };
}
