{
  description = "Home Manager modules";

  outputs = { self, ... }: {
    lib.modules = [
      ./modules/chromium.nix
      ./modules/foot.nix
      ./modules/git.nix
    ];
  };
}
