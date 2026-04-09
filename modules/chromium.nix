{ config, lib, pkgs, ... }:

{
  options.chromium = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config = {
    programs.chromium = {
      enable = config.chromium.enable;
      commandLineArgs = [ "--ozone-platform=wayland" ];
      extensions = [
        {
          id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; # ublock origin lite
        }
      ];
    };
  };
}
