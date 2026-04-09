{ config, lib, pkgs, ... }:

{
  options.git = {
    name = lib.mkOption {
      type = lib.types.str;
      default = "";
      description = "Git author full name";
    };
    email = lib.mkOption {
      type = lib.types.str;
      default = "";
      description = "Git author E-mail address";
    };
  };

  config = {
    programs.git.enable = true;
    programs.git.includes = [
      {
        contents = {
          user = {
            name = config.git.name;
            email = config.git.email;
          };
        };
      }
    ];
  };
}
