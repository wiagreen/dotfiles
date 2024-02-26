{ pkgs, ... }:
{
  programs = {
    fish = {
      enable = true;
      shellInit = ''
        set -g fish_greeting
        fish_add_path ~/local/bin
      '';
      shellAliases = {
        em = "emacs -nw";
        doom = "~/.config/emacs/bin/doom";
        "..." = "cd ../..";
        "...." = "cd ../../..";
      };
    };
    fzf.enable = true;
  };
}
