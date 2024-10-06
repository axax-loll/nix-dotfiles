{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (callPackage ./anicliru/anicli-ru.nix { })
    # (callPackage ./torrserver/default.nix { })
  ];
}
