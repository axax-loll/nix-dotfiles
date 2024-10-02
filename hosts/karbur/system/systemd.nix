{ pkgs, ... }:
{
  systemd = {
    packages = with pkgs; [ # PACKAGES
      lact
    ];
    # services = { # SERVICES SEETINGS
    #     torrserver = let
    #       ver = "MatriX.134";
    #       client = pkgs.fetchurl {
    #         url = "https://github.com/YouROK/TorrServer/releases/download/${ver}/TorrServer-linux-amd64";
    #         hash = "sha256-0u1QK3AOroUj/8im22ALWRlUcWkmntLJlx4uItpHvm8=";
    #         executable = true;
		  # };
    #     in {
    #     wantedBy = [ "sway-session.target" ];
    #     partOf = [ "graphical-session.target" ];
    #     script = "${client}";
    #   };
    # };
  };
}
