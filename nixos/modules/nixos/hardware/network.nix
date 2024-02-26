{ config, ... }:
{
  networking = {
    hostName = "nixos";
    
    networkmanager = {
      enable = true;
      insertNameservers = [
        "1.1.1.1" 
      ];
    };
  };
}
