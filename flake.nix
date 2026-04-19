{
  description = "Home Manager modules";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, stylix, ... }: {
    lib.modules = [
      stylix.homeModules.stylix
      ./modules/chromium.nix
      ./modules/foot.nix
      ./modules/stylix.nix
      ./modules/git.nix
    ];
  };
}
