{ config, pkgs, ... }:
{
  users.users.megumax = {
    isNormalUser = true;
    description = "megumax";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      fishPlugins.tide
    ];
  };
}
