{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (callPackage ./anicliru/default.nix { })
    # (callPackage ./torrserver/default.nix { })
  ];
}
