{ pkgs, config, ...}:
{
	programs.kitty.keybindings = with config.lib.stylix.colors; {
		"ctrl+shift+c" = "copy_to_clipboard";
		"ctrl+shift+v" = "paste_from_clipboard";
		
		"kitty_mod+x" = "next_tab";
		"kitty_mod+shift+x" = "move_tab_forward";
		
		"kitty_mod+z" = "previous_tab";
		"kitty_mod+shift+z" = "move_tab_backward";

		"kitty_mod+enter" = "new_window";
		"kitty_mod+a" = "new_tab";
		"kitty_mod+q" = "close_window";

		"kitty_mod+shift+=" = "set_background_opacity +0.1";
		"kitty_mod+shift+-" = "set_background_opacity -0.1";
		"kitty_mod+shift+0" = "set_background_opacity 1";

		"kitty_mod+." = "layout_action decrease_num_full_size_windows";
		"kitty_mod+," = "layout_action increase_num_full_size_windows";
		"kitty_mod+/" = "layout_action mirror toggle";
		"kitty_mod+m" = "layout_action mirror true";
		"kitty_mod+n" = "layout_action mirror false";

		"kitty_mod+left" = "resize_window narrower";
		"kitty_mod+right" = "resize_window wider";
		"kitty_mod+up" = "resize_window taller";
		"kitty_mod+down" = "resize_window shorter";
		"kitty_mod+home" = "resize_window reset";

		"kitty_mod+h" = "resize_window narrower";
		"kitty_mod+l" = "resize_window wider";
		"kitty_mod+k" = "resize_window taller";
		"kitty_mod+j" = "resize_window shorter";
		"kitty_mod+g" = "resize_window reset";
		
		"kitty_mod+r" = "load_config_file";
		"kitty_mod+t" = "set_tab_title";
		"kitty_mod+i" = "next_layout";
		"kitty_mod+u" = "kitten unicode_input";
		"kitty_mod+escape" = "kitty_shell overlay";
		"kitty_mod+]" = "next_window";
		"kitty_mod+[" = "previous_window";
		"kitty_mod+p" = "set_background_opacity 1";
		"kitty_mod+o" = "set_background_opacity default";
		"kitty_mod+f" = "toggle_fullscreen";
		"f11" = "toggle_fullscreen";
	};
}
