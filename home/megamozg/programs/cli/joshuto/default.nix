{ pkgs, ... }:
{
	imports = [ ./theme.nix ];
	programs.joshuto = {
		enable = true;
		settings = {
			numbered_command = false;
			mouse_support = true;
			focus_on_create = true;
			use_trash = true;
			watch_files = true;
			xdg_open = true;
			xdg_open_fork = false;
			case_insensitive_ext = false;
			zoxide_update = true;
			display = {
				mode = "default";
				automatically_count_files = false;
				collapse_preview = true;
				column_ratio = [1 4 4];
				scroll_offset = 6;
				show_borders = false;
				show_hidden = false;
				show_icons = true;
				# line_number_style = "relative";
				tilde_in_titlebar = false;
				linemode = "size";
				sort = {
					sort_method = "natural";
					case_sensitive = false;
					directories_first = true;
					reverse = false;
				};
			};
			preview = {
				max_preview_size = 100000000;
				use_xdg_thumbs = true;
				xdg_thumb_size = "xlarge";
			};
			tab.home_page = "inherit";
		};
	};
}
