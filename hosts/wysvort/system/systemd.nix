{ pkgs, ... }:
{
  systemd = {
    packages = with pkgs; [ # PACKAGES
      lact
    ];
    services = { # SERVICES SEETINGS
      lactd.wantedBy = ["multi-user.target"];
    };
  };
}
