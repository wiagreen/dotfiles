{ config, ... }:
{
  programs.hyprland.enable = true;
  services.xserver.displayManager.sddm.wayland.enable = true;

  environment.variables = {
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    XDG_SESSION_DESKTOP = "Hyprland";
    XCURSOR_SIZE = "24";
    QT_SCALE_FACTOR = "1";
    QT_QPA_PLATFORM = "wayland";
    GLFW_IM_MODULE = "fcitx";
    _JAVA_AWT_WM_NONEREPARENTING = "1";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    QT_QPA_PLATFORMTHEME="gtk3";
  };
}
