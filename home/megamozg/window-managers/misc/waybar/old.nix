{ pkgs, config, ... }:
{
  home.packages = with pkgs; [ waybar ];
  xdg.configFile = {
    "waybar/config.jsonc".text = ''
		{
		"battery": {
			"format": "{icon} {capacity}%",
			"format-alt": "{icon} {time} ",
			"format-charging": "<span color='#${config.lib.stylix.colors.base06}'>󰂅</span> {capacity}%",
			"format-icons": [
			  "󰁺",
			  "󰁻",
			  "󰁼",
			  "󰁽",
		      "󰁾",
			  "󰁿",
			  "󰂀",
			  "󰂁",
			  "󰂂",
			  "󰁹"
			],
			"states": {
			  "critical": 15,
			  "warning": 30
			}
		},
		"battery#bat2": {
			"bat": "bat2"
		},
		"clock#time": {
			"format": " {:%H:%M:%S}",
			"interval": 1,
			"tooltip": false
		},
		"custom/date": {
			"exec": "date +\"󰸘 %e %b\"",
			"interval": 1
		},
		"custom/launcher": {
            "format": "<span color='#${config.lib.stylix.colors.base0C}' font='17'></span> {}",
		},
		"custom/separator": {
			"format": "/",
			"interval": 1
		},
		"height": 1,
		"hyprland/language": {
			"format": "󰌌 {}",
			"format-en": "US",
			"format-ru": "RU",
            "keyboard-name": "at-translated-set-2-keyboard",
			"interval": 1
		},
		"hyprland/window": {
			"format": "{}",
			"max-length": 35
		},
		"backlight": {
			"device": "intel_backlight",
			"format": "{icon}{percent}%",
			"format-icons": [" ", " "]
		},
		"layer": "top",
		"modules-center": [
			"hyprland/workspaces",
		],
		"modules-left": [
            "custom/launcher",
            "custom/separator",
			"pulseaudio",
			"backlight",
			"hyprland/language"
		],
		"modules-right": [
			"custom/date",
			"clock#time",
			"battery"
		],
		"position": "bottom",
		"pulseaudio": {
			"format": "{icon} {volume}%",
			"format-icons": {
		    "default": [
			   "",
			   "",
			   ""
			 ],
			"hands-free": "",
				"headphone": "",
				"headset": ""
			},
			"format-muted": "󰝟 mute",
			"on-click": "wpctl set-mute @deFAULT_AUDIO_SINK@ toggle",
			"scroll-step": 3
		},
		"temperature": {
			"critical-threshold": 80,
			"format": "{icon} {temperatureC}°C",
			"format-icons": [
			  ""
			]
		},
		"hyprland/workspaces": {
			"on-click": "activate",
			"format": "{icon}",
			"format-icons": {
              "1":"一",
              "2":"二",
              "3":"三",
              "4":"四",
              "5":"五",
              "6":"六",
              "7":"七",
              "8":"八",
              "9":"九",
			  "10":"十",
			},
		   "persistent-workspaces": {
		     "eDP-1": [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ],
			},
		  },
		}
    '';

    
    "waybar/style.css".text = ''
      * {
        font-family: JetBrainsMono NerdFont, SourceHanSansJP;
        font-weight: bold;
        font-size: 16px;
      }

      window#waybar {
        background-color: transparent;
        color: #${config.lib.stylix.colors.base06};
      }

      window#waybar > box {
        margin: 5px 0px 0px 0px;
        background-color: #${config.lib.stylix.colors.base00};
        border-top: 0px;
        border-bottom: 0;
        border-style: solid;
        border-color: #3C3836;
        box-shadow: 1 1 3 1px #101010;
      }

      #workspaces button {
        background-color: #${config.lib.stylix.colors.base03};
        border-radius: 20px;
        margin: 2px;
        padding: 0px;
        padding-right: 6px;
        padding-left: 6px;
        color: #${config.lib.stylix.colors.base06};
        min-height: 25px;
        transition: all 0.4s ease-in-out;
      }

      #workspaces button label{
        color: #${config.lib.stylix.colors.base06};
        font-weight: bolder;
      }

      #workspaces button.empty{
        background: #${config.lib.stylix.colors.base02};
      }

      #workspaces button.active {
        background: radial-gradient(circle, #${config.lib.stylix.colors.base06} 0%, #${config.lib.stylix.colors.base0D} 50%, #${config.lib.stylix.colors.base0B} 100%); 
        background-size: 400% 400%;
        animation: gradient 5s linear infinite;
        transition: all 0.3s ease-in-out;
        border-color: #45475a;
      }

      #workspaces button.active label {
        color: #${config.lib.stylix.colors.base02};
        font-weight: bolder;
      }

      @keyframes gradient {
	      0% {
		      background-position: 0px 50px;
	      }
	      50% {
		      background-position: 100px 30px;
	      }
	      100% {
		      background-position: 0px 50px;
	      }
      }

      @keyframes gradient_f {
	      0% {
		      background-position: 0px 200px;
	      }
          50% {
              background-position: 200px 0px;
          }
	      100% {
		      background-position: 400px 200px;
	      }
      }

      @keyframes gradient_f_nh {
	      0% {
		      background-position: 0px 200px;
	      }
	      100% {
		      background-position: 200px 200px;
	      }
      }

      #custom-date,
      #battery,
      #backlight
      #clock,
      #pulseaudio,
      #workspaces,
      #window,
      #language,
      #text,
      #custom-launcher,
      #custom-separator,

      #tray {
        color: #${config.lib.stylix.colors.base06};
        background: #${config.lib.stylix.colors.base00};
        padding: 0 0.4em;
        padding-top: 0px;
        padding-bottom: 2px;
        border-style: solid;
        min-height: 30px;
      }

      #battery {
        margin: 3 4 3 4px;
        padding: 0 0.4em;
      }

      #backlight {
        margin: 3 4 3 4px;
        padding: 0 0.4em;
      }

      #custom-date {
        margin: 3 4 3 4px;
        padding: 0 0.4em;
      }

      #clock {
        margin: 3 4 3 4px;
        padding: 0 0.4em;
      }

      #language {
        margin: 3 4 3 4px;
        padding: 0 0.4em;
      }

      #pulseaudio {
        margin: 3 4 3 4px;
        padding: 0 0.4em;
      }

      #custom-separator {
        padding: 0px;
        margin: 0px;
      }

      #custom-launcher {
        margin-left: 0px;
        margin-right: 0px;
        padding-right: 0.6em;
        border-radius: 0 20 20 0px;
      }

      #workspaces {
        margin: 3 0 3 0px;
        border-radius: 14 14 14 14px;
      }
    '';
   };
}
