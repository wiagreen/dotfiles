{ config, ... }:
{
  time.timeZone = "Asia/Yekaterinburg";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = { LANG = "en_US.UTF-8"; };
  };
}
