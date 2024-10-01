{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nil
    marksman
    yaml-language-server
  ];
}
