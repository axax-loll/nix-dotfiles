{ pkgs, config, ... }:
{
	# imports = [ ./theme.nix ];
	programs.helix = {
		enable = true;
		# defaultEditor = true;
		settings = {
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
			};
			editor.indent-guides = {
				render = true;
				character = "|";
			};
			editor.cursor-shape = {
				insert = "bar";
				normal = "block";
				select = "underline";
			};
			editor.statusline = {
				left = ["mode" "spinner" "file-name" "read-only-indicator"];
				center = [];
				right = ["file-type" "separator" "spacer" "position-percentage" "position" "separator" "total-line-numbers"];
				separator = "|";
				mode.normal = "NORMAL";
				mode.insert = "INSERT";
				mode.select = "SELECT";
			};
			editor.file-picker = {
				hidden = false;
			};
		};
	};
}
