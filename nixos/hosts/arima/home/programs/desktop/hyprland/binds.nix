{
  xdg.configFile."hypr/binds.conf".text = ''
      # [ Var ]
      $fileManager = nautilus
      $term = foot
      $menu = wofi 
      $clipboard = cliphist list | wofi --dmenu | cliphist decode | wl-copy
      $powermenu = bash ~/.config/rofi/powermenu/type-2/powermenu.sh

      $mainMod = SUPER

      # [ Global ]
      bind = $mainMod, C, killactive, 
      bind = $mainMod, M, exit, 
      bind = $mainMod, F, togglefloating, 
      bind = $mainMod, P, pseudo, # dwindle
      bind = $mainMod, J, togglesplit, # dwindle
      bind = $mainMod, L, exec, swaylock

      bind = $mainMod CTRL, P, exec, poweroff
      bind = $mainMod CTRL, R, exec, reboot

      bind = $mainMod, V, exec, $clipboard
      bind = $mainMod, R, exec, hyprctl reload

      # [ Sound bind ]
      bindl =, XF86AudioMute, exec, pamixer -t 
      bindl =, XF86AudioRaiseVolume, exec, pamixer -i 5
      bindl =, XF86AudioLowerVolume, exec, pamixer -d 5 

      # [ Launching the software ]
      bind = $mainMod, RETURN, exec, $term
      bind = $mainMod, N, exec, $fileManager
      bind = $mainMod, D, exec, $menu
      bind = $mainMod, X, exec, $powermenu
      bind = , PRINT, exec, grim ~/Pictures/screenshot/screenshot_"$(date +'%Y.%m.%d:%s')".png
      bind = $mainMod, PRINT, exec, grim -g "$(slurp)" ~/Pictures/screenshot/screenshot_"$(date +'%Y.%m.%d:%s')".png

      # [ Focus management ]
      bind = $mainMod, left, movefocus, l
      bind = $mainMod, right, movefocus, r
      bind = $mainMod, up, movefocus, u
      bind = $mainMod, down, movefocus, d

      # [ Switching workspaces ]
      bind = $mainMod, 1, workspace, 1
      bind = $mainMod, 2, workspace, 2
      bind = $mainMod, 3, workspace, 3
      bind = $mainMod, 4, workspace, 4
      bind = $mainMod, 5, workspace, 5
      bind = $mainMod, 6, workspace, 6
      bind = $mainMod, 7, workspace, 7
      bind = $mainMod, 8, workspace, 8
      bind = $mainMod, 9, workspace, 9
      bind = $mainMod, 0, workspace, 10

      # [ Moving a window to another workspace ]
      bind = $mainMod SHIFT, 1, movetoworkspace, 1
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5
      bind = $mainMod SHIFT, 6, movetoworkspace, 6
      bind = $mainMod SHIFT, 7, movetoworkspace, 7
      bind = $mainMod SHIFT, 8, movetoworkspace, 8
      bind = $mainMod SHIFT, 9, movetoworkspace, 9
      bind = $mainMod SHIFT, 0, movetoworkspace, 10

      # [ Moving and resizing windows of LKM PKM + mineMod ]
      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow

      # [ resizing ]
      bind = $mainMod CTRL, left, resizeactive,-50 0
      bind = $mainMod CTRL, right, resizeactive,50 0
      bind = $mainMod CTRL, up, resizeactive,0 -50
      bind = $mainMod CTRL, down, resizeactive,0 50
  '';
}
