{
  xdg.configFile."hypr/autostart.conf".text = ''
    # [ Autostart ]
    exec-once = waypaper --restore --backend swww
    exec-once = mako
    exec-once = blueman-applet
    exec-once = wl-paste --type text --watch cliphist store 
    exec-once = wl-paste --type image --watch cliphist store
  '';
}
