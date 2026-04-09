{ config, lib, pkgs, ... }:

{
  options.foot = {
    theme = lib.mkOption {
      type = lib.types.str;
      default = "solarized-dark";
      description = "The name of the foot theme file in /usr/share/foot/themes/";
    };
  };

  config = {
    home.file.".config/foot/foot.ini".text = ''
      login-shell=yes
      font=monospace:size=16

      [csd]
      preferred=none

      [main]
      include=/usr/share/foot/themes/${config.foot.theme}
    '';
  };
}
