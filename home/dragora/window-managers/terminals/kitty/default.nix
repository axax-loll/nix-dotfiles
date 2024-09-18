{ pkgs, config, ...}:
{
	imports = [ ./binds.nix ./colors.nix ];
	programs.kitty = with config.lib.stylix.colors; {
		enable = true;
		environment = {
			"MICRO_TRUECOLOR" = "1";
			"RANGER_LOAD_DEFAULT_RC" = "false";
		};
		settings = {
			confirm_os_window_close = 0;

			tab_bar_min_tabs = 2;
			tab_bar_edge = "button";
			tab_bar_style = "fade";
			tab_bar_align = "left";
			tab_powerline_style = "angled";
			tab_title_template = "{title}";
			tab_bar_margin_width = 0;
			tab_fade = "0 0.5 1";
			
			window_margin_width = 8;
			window_padding_width = 4;
			window_border_width = "0.2pt";
			single_window_padding_width = 4;
			
			resize_in_steps = "no";
			resize_debounce_time = 0;
			
			dynamic_background_opacity = true;
			cursor_shape = "block";
			mouse_hide_wait = 2;
			underline_hyperlinks = "always";
			enable_audio_bell = "no";

			# clipboard_control = "read-primary read-clipboard";

			kitty_mod = "alt";
		};
		shellIntegration.enableFishIntegration = true;
	};
}
