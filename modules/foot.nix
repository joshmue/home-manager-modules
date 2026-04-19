{ config, lib, pkgs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        login-shell = "yes";
      };
      csd = {
        preferred = "none";
      };
    };
  };
}
