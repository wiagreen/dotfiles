{
  programs.waybar.enable = true;
  xdg.configFile = {
    "waybar/config".text = ''
      {
        "layer": "top",
        "position": "top",

        "modules-left": [
          "custom/nixos",
          "backlight",
          "battery"
        ],
        
        "modules-center": [
          "hyprland/workspaces"
        ],

        "modules-right": [
          "pulseaudio",
          "network",
          "clock",
          "tray"
        ],

        "battery": {
          "interval": 10,
          "states": {
            "warning": 30,
            "critical": 15
          },
          "format-time": "{H}:{M:02}",
          "format": "{icon}  {capacity}% ",
          "format-charging": " {capacity}% ",
          "format-charging-full": " {capacity}%",
          "format-full": "{icon}  {capacity}%",
          "format-alt": "{icon}  {power}W",
          "format-icons": [
            "",
            "",
            "",
            "",
            ""
          ],
          "tooltip": false
        },

          "clock": {
              "format": " {:%I:%M %p}",
              "format-alt": " {:%R 󰃭 %d·%m·%y}",
              "tooltip": false
          },
        
        "custom/nixos": {
          "format": " ",
          "tooltip":false,
        },

        "tray": {
          "icon-size": 21,
          "spacing": 10
        },

        "custom/power": {
          "format": "⏻",
          "on-click": "bash ~/.config/rofi/powermenu/type-2/powermenu.sh",
          "tooltip":false
        },
        
      "network": {
          "interval": 5,
          "format-wifi": "  void",
          "format-ethernet": "  void",
          "format-disconnected": "󰖪 ",
          "format-alt": " {ipaddr}/{cidr}",
          "tooltip": false
        },

      "cava": {
              "framerate": 60,
              "autosens": 1,
              "bars": 14,
              "lower_cutoff_freq": 50,
              "higher_cutoff_freq": 10000,
              "method": "pipewire",
              "source": "auto",
              "stereo": true,
              "reverse": false,
              "bar_delimiter": 0,
              "monstercat": false,
              "waves": false,
              "input_delay": 2,
              "format-icons": [
              "<span foreground='#b4befe'>▁",
              "<span foreground='#b4befe'>▂",
              "<span foreground='#b4befe'>▃",
              "<span foreground='#b4befe'>▄",
              "<span foreground='#b4befe'>▅",
              "<span foreground='#b4befe'>▆",
              "<span foreground='#b4befe'>▇",
              "<span foreground='#b4befe'>█"
            ],      
          },
      
      "wlr/workspaces": {
            "active-only": false,
            "all-outputs": false,
            "disable-scroll": false,
            "format": "{name}",
            "format-icons": {
              "active": "",
              "default": "",
              "sort-by-number": true,
              "urgent": ""
            },
            "on-click": "activate",
            "on-scroll-down": "hyprctl dispatch workspace e+1",
            "on-scroll-up": "hyprctl dispatch workspace e-1"
          },
        
        "backlight": {
            "device": "intel_backlight",
            "format": "{icon} {percent}%",
            "format-icons": ["", "", "", "", "", "", "", "", ""],
            "tooltip": false
      },
        
        "pulseaudio": {
          "format": "{icon} {volume}%",
          "format-bluetooth": "{icon}  {volume}%",
          "format-muted": "",
          "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", ""]
          },
          "scroll-step": 1,
          "on-click": "pavucontrol",
          "tooltip": false
        },
      }
    '';
    "waybar/style.css".text = ''
      @define-color fg #e0e0e0;
      @define-color bg #191919;

      * {
        border: none;
        min-height: 0;
        box-shadow: none;
        font-family: JetBrainsMono Nerd Font;
        text-shadow: none;
        font-size: 16px;
      }

      #waybar {
        background: rgba(15,15,15,1);
      }

      #workspaces {
        background: @bg;
        margin: 4px 4px;
        padding: 6px 3px;
        border-radius: 8px;
        color: #cba6f7;
        margin-top: 7px;
        margin-bottom: 7px;
      }

      #workspaces button {
        padding: 0px 1px;
        margin: 0px 3px;
        border-radius: 8px;
        color: transparent;
        background: #262626;
        transition: all 0.3s ease-in-out;
      }

      #workspaces button.active {
        background-color: #262626;
        color: @fg;
        border-radius: 16px;
        min-width: 50px;
        background-size: 400% 400%;
        transition: all 0.3s ease-in-out;
      }

      #workspaces button:hover {
        background-color: #f5f5f5;
        color: #11111B;
        border-radius: 16px;
        min-width: 50px;
        background-size: 400% 400%;
      }

      #window {
        margin-right: 35pt;
        margin-left: 35pt;
      }

      #custom-nixos {
        background: @bg;
        padding: 2px 11px 2px 14px;
        margin: 4px;
        border-radius: 10px;
        margin-bottom: 7px;
        margin-top: 7px;
      }

      #custom-power {
        background: @bg;
        padding: 2px 14px 2px 11px;
        margin: 4px;
        border-radius: 10px;
        margin-bottom: 7px;
        margin-top: 7px;
      }

      #tray,
      #cava,
      #pulseaudio,
      #backlight,
      #network, 
      #clock, 
      #battery {
        background: @bg;
        color: @fg;
        margin: 4px;
        border-radius: 10px;
        margin-bottom: 7px;
        margin-top: 7px;
        padding: 4px 10px 4px 10px;
      }
    '';
  };
}
