{ pkgs, config, ... }:
{
	imports = [ ./theme.nix ./health.nix ];
	programs.helix = {
		enable = true;
		defaultEditor = true;
		settings = {
			theme = "base16";
			editor = {
				line-number = "relative";
				mouse = true;
				cursorline = true;
				auto-completion = true;
				completion-replace = true;
				auto-info = true;
				auto-pairs = true;
				true-color = true;
				color-modes = true;
				indent-guides = {
					render = true;
					character = "»";
				};
				cursor-shape = {
					insert = "bar";
					normal = "block";
					select = "underline";
				};
				soft-wrap = {
					enable = true;
					max-wrap = 25;
					wrap-indicator = "┆ ";
				};
				statusline = {
					left = ["mode" "spinner" "file-name" "read-only-indicator"];
					center = [];
					right = ["file-type" "separator" "spacer" "position-percentage" "position" "separator" "total-line-numbers"];
					separator = "|";
					mode.normal = "NORMAL";
					mode.insert = "INSERT";
					mode.select = "SELECT";
				};
				file-picker = {
					hidden = false;
				};
			};
		};
	};
}
