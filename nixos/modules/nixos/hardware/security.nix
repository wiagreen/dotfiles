{ config, ... }:
{
  security.polkit.enable = true;
  security.pam.services.swaylock = {};
}
