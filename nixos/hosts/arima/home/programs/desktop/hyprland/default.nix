{ inputs, pkgs, ... }:
{
  imports = [
    ./binds.nix
    ./autostart.nix
    ./windowsrule.nix
  ];

  home = {
    packages = with pkgs; [
      xwaylandvideobridge
      wl-clipboard
      wf-recorder
      waypaper
      dconf
      swww
    ];
  };
  
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    xwayland.enable = true;
    systemd.enable = false;
    extraConfig = ''
      # [ ENV VAR ]
      source = ~/.config/hypr/autostart.conf
      source = ~/.config/hypr/windowrule.conf
      source = ~/.config/hypr/binds.conf

      # [ Monitor ]
      monitor = ,preferred,0x0,1

      debug {
        damage_tracking=2
      }

      xwayland {
        force_zero_scaling = true
      }

      misc {
        vfr = true
      }

      # [ Keyboard ]
      input {
        kb_layout = us,ru
        kb_variant =
        kb_model =
        kb_options = grp:alt_shift_toggle
        kb_rules =

        follow_mouse = 1
        
        touchpad {
          natural_scroll = yes
        }

        sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
      }

      # [ General ]
      general {
        gaps_in = 5
        gaps_out = 15
        border_size = 3
        col.active_border = rgba(95c7aeff) rgba(c795aeff) 0deg
        col.inactive_border = rgba(595959aa)

        layout = dwindle
      }

      # [ Decoration ]
      decoration {
        rounding = 4

        blur {
          enabled = false
        }
      }

      # [ Animation ]
      animations {
        enabled = yes
        bezier = myBezier, 0.05, 0.9, 0.1, 1.05
        
        animation = windows, 1, 7, myBezier
        animation = windowsOut, 1, 7, default, popin 80%
        animation = border, 1, 10, default
        animation = borderangle, 1, 8, default
        animation = fade, 1, 7, default
        animation = workspaces, 1, 6, default
      }

      dwindle {
        pseudotile = yes
        preserve_split = yes 
      }

      master {
        new_is_master = true
      }

      gestures {
        workspace_swipe = off
      }
    '';
  };
}
