{ ... }:
{
  programs.waybar = {
    enable = true;
    settings = [
      {
        mainBar = {
          layer = "top";
          position = "bottom";
          height = 1;
          modules-left = [
            "custom/launcher"
            "custom/separator"
            "pulseaudio"
            "backlight"
            "hyprland/language"
          ];
          modules-center = [
            "hyprland/workspaces"
          ];
          modules-right = [
            "custom/date"
            "clock#time"
            "battery"
          ];

          # LEFT MODULES
          "custom/launcher" = {
          }
        };
      }
    ];
  };
}
