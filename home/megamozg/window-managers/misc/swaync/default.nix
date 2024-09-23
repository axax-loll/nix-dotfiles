{ config, ... }:
{
	services.swaync = {
		enable = true;
		settings = {
			positionX = "right";
			positionY = "top";
			layer = "overlay";
			control-center-layer = "top";
			layer-shell = true;
			cssPriority = "application";
			control-center-margin-top = 6;
			control-center-margin-bottom = 0;
			control-center-margin-right = 0;
			control-center-margin-left = 0;
			control-center-height = 600;
			control-center-width = 500;
			notification-2fa-action = true;
			notification-inline-replies = false;
			notification-icon-size = 64;
			notification-body-image-height = 100;
			notification-body-image-width = 200;
			timeout = 10;
			hide-on-clear = true;
			hide-on-action = true;
			transition-time = 200;
		};
		style = with config.lib.stylix.colors; ''
			@define-color background #${base00};
			@define-color background-alt #${base01};
			@define-color background-focus #${base02};
			@define-color border #${base03};
			@define-color red #${base08};
			@define-color orange #${base0A};
			@define-color yellow #${base09};
			@define-color green #${base0B};
			@define-color blue #${base0C};
			@define-color gray #${base05};
			@define-color black #${base00};
			@define-color white #${base06};

			* {
				font-family: "JetBrainsMono Nerd Font" !important;
			}

			progress, progressbar, trough {
				border: 1px solid @border;
				border-radius: 16px;
			}

			trough {
				background: @background-alt;
			}

			.notification.low, .notification.normal {
				border: 1px solid @border;
			}

			.notification.low progress, .notification.normal progress {
				background: @blue;
			}

			.notification.critical {
				border: 1px solid @red;
			}

			.notification.critical progress {
				background: @red;
			}

			.body, .time {
				color: alpha(@white, 0.7);
			}
		'';
	};
}
