{ config, lib, pkgs, ... }:

{
  options.style = {
    theme = lib.mkOption {
      type = lib.types.str;
      default = "github-dark";
      description = "theme name";
    };
  };

  config = {
    stylix = {
      enable = true;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/${config.style.theme}.yaml";
      polarity = "dark";
    };
  };
}
