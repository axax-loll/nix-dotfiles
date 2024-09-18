{ lib, ... }:
{
	programs.starship = {
		enable = true;
		enableFishIntegration = true;
		enableZshIntegration = true;
		settings = {
			add_newline = true;
			format = lib.concatStrings [
				"$shell"
				"$username"
				"$directory"
				"$git_branch"
				"$package"
				"$cmd_duration"
				"$line_break"
				"$character"
			];
			shell = {
				fish_indicator = "\[fish\]($style)";
				zsh_indicator = "\[zsh\]($style)";
				bash_indicator = "\[bash\]($style)";
				nu_indicator = "\[nu\]($style)";
				unknown_indicator = "\[sh ?\]";
				style = "bold fg:purple";
				disabled = false;
			};
			username = {
				style_user = "bold red";
				style_root = "bold red";
				format = "[$user]($style) in ";
				show_always = true;
				disabled = false;
			};
			directory = {
				format = "[$path]($style) [$read_only]($read_only_style)";
				style = "bold fg:blue";
				read_only = "[󰌾] ";
				read_only_style = "bold red";
				home_symbol = "~~";
				truncation_length = 2;
				truncation_symbol = "../";
				disabled = false;
			};
			git_branch = {
				format = "on [$symbol$branch]($style) ";
				style = "bold italic fg:green";
				symbol = " ";
				truncation_length = 4;
				truncation_symbol = "";
				disabled = false;
			};
			package = {
				format = "via [󰏗 $version](bold fg:yellow) ";
			};
			cmd_duration = {
				min_time = 1000;
				format = "took [$duration](bold fg:yellow)";
				disabled = false;
			};
			character = {
				format = "$symbol ";
				success_symbol = "[❯❯❯](bold green)";
				error_symbol = "[❯❯❯](bold red)";
				vimcmd_symbol = "[❯❯❯](bold yellow)";
				disabled = false;
			};
		};
	};
}
