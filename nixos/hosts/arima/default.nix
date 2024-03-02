{ config, inputs, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/hardware/boot.nix
    ../../modules/nixos/hardware/hardware.nix
    ../../modules/nixos/hardware/locale.nix
    ../../modules/nixos/hardware/packages.nix
    ../../modules/nixos/hardware/pipewire.nix
    ../../modules/nixos/hardware/network.nix
    ../../modules/nixos/hardware/security.nix
    ../../modules/nixos/hardware/services.nix
    ../../modules/nixos/hardware/bluetooth.nix
    ../../modules/nixos/hardware/xserver.nix
    ../../modules/nixos/hardware/user.nix
    ../../modules/nixos/desktop/hyprland.nix
    inputs.home-manager.nixosModules.default
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "user" = import ./home ;
    };
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system = {
    stateVersion = "23.11"; 
    autoUpgrade.enable = true;
  };
}
