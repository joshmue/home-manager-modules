{
  description = "Home Manager modules";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, stylix, nvf, ... }: {
    lib.modules = [
      stylix.homeModules.stylix
      nvf.homeManagerModules.default
      ./modules/chromium.nix
      ./modules/foot.nix
      ./modules/stylix.nix
      ./modules/nvf.nix
      ./modules/git.nix
    ];
  };
}
