{ pkgs, ... }:
{
  systemd = {
    packages = with pkgs; [ # PACKAGES
      lact
    ];
    services = { # SERVICES SEETINGS
      lactd.wantedBy = ["multi-user.target"];
      lact = { # LACT FOR OC
        after = ["multi-user.target"];
        wantedBy = ["multi-user.target"];
        serviceConfig = {
          ExecStart = "${pkgs.lact}/bin/lact daemon";
        };
        enable = true;
      };
    };
  };
}
