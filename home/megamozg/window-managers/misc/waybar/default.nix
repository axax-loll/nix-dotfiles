{ config, ... }:
let
  terminal = "kitty";
  fileman = "joshuto";
in
{
  imports = [ ./style.nix ];
  programs.waybar = with config.lib.stylix.colors; {
    enable = true;
    settings = {
      # BAR AT BOTTOM
      mainBar = {
        layer = "top";
        position = "bottom";
        height = 1;
        modules-left = [
           "custom/launcher"
           "custom/separatorL"
           "pulseaudio"
           "custom/separatorL"
           "backlight"
           "custom/separatorL"
           "hyprland/language"
         ];
        modules-center = [
          "hyprland/workspaces"
        ];
        modules-right = [
          "disk"
          "custom/separatorR"
          "clock#time"
          "custom/separatorR"
          "battery"
        ];

         # LEFT MODULES
        "custom/launcher" = {
         	format = "<span color='#${base0C}' font='17'></span> {}";
          tooltip = false;
        };
        "custom/separatorL" = {
         	format = "|";
         	interval = 1;
          tooltip = false;
        };
        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-icons = {
            default = [ "" " " " " ];
            headphone = [ "" ];
            headset = [ "" ];
          };
          format-muted = "  muted";
          scroll-step = 3;
          on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          on-click-right = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          tooltip = false;
        };
        "backlight" = {
          device = "intel_backlight";
          format = " {icon}{percent}% ";
          format-icons = [ "󱩎 " "󱩏 " "󱩐 " "󱩑 " "󱩒 " "󱩓 " "󱩔 " "󱩕 " "󱩖 " "󰛨 " ];
          scroll-step = 1;
          tooltip = false;
        };
        "hyprland/language" = {
          format = "󰌌 {}";
          format-en = "EN";
          format-ru = "RU";
          keyboard-name = "at-translated-set-2-keyboard";
          tooltip = false;
        };

        # CENTER MODULES
        "hyprland/workspaces" = {
          on-click = "activate";
          format = "{icon}";
          format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            "7" = "七";
            "8" = "八";
            "9" = "九";
          };
          persistent-workspaces = {
            "*" = [ 1 2 3 4 5 6 7 8 9 ];
          };
        };

        # RIGHT MODULES
        "custom/separatorR" = {
          format = "|";
          interval = 1;
          tooltip = false;
        };
        "disk" = {
          format = "{used} of {total} ";
          interval = 30;
          path = "/";
          unit = "GB";
          on-click-middle = "󰋊 ${terminal} ${fileman}";
          tooltip = false;
        };
        "clock#time" = {
          format = "  {:%H:%M} ";
          interval = 1;
          tooltip = false;
        };
        "battery" = {
          format = "{icon} {capacity}%";
          format-alt = "{icon} {time}";
          format-charging = "󱐋{capacity}%";
          format-icons = [ "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
          states = {
            critical = 15;
            warning = 30;
          };
          tooltip = false;
        };
      };
    };
  };
}
