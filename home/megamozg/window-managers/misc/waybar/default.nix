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
           "network"
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
          on-click = "nwg-drawer -ovl -nocats -nofs -d -c 7 -mb -49";
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
          format = "{icon}{percent}%";
          format-icons = [ "󱩎 " "󱩏 " "󱩐 " "󱩑 " "󱩒 " "󱩓 " "󱩔 " "󱩕 " "󱩖 " "󰛨 " ];
          scroll-step = 1;
          tooltip = false;
        };
        "network" = {
          format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
          format-wifi = "{icon} CON";
          format-ethernet = "󰈀";
          format-disconnected = "⚠";
          on-click = "nmtui";
          interval = 5;
          tooltip = false;
        };
        "hyprland/language" = {
          format = "󰌌 {}";
          format-en = "EN";
          format-ru = "RU";
          keyboard-name = "at-translated-set-2-keyboard";
          tooltip = false;
        };
        "cava" = {
          framerate = 24;
          autosens = 1;
          bars = 12;
          source = "auto";
          format-icons = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
          actions = {
            on-click-right = "mode";
          };
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
        "tray" = {
          icon-size = 18;
          show-passive-items = true;
          spacing = 8;
        };
        "disk" = {
          format = "{used} of {total} 󰋊";
          interval = 30;
          path = "/";
          unit = "GB";
          on-click-middle = "${terminal} ${fileman}";
          tooltip = false;
        };
        "clock#time" = {
          format = "{:%H:%M}  ";
          interval = 1;
          tooltip = false;
        };
        "battery" = {
          format = "{capacity}% {icon}";
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
