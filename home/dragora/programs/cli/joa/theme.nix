{ ... }:
{
	programs.joshuto.theme = {
		tabs.styles = {
			active = {
				bg = "none";
				fg = "blue";
				bold = true;
			};
			inactive = {
				bg = "none";
				fg = "gray";
				bold = true;
			};
			scroll_front = {
				fg = "yellow";
				bold = true;
			};
			scroll_back = {
				fg = "yellow";
				bold = true;
			};
		};
		selection = {
			fg = "yellow";
			bold = true;
			prefix = " ";
		};
		visual_mode_selection = {
			fg = "light_red";
			bold = true;
			prefix = "v ";
		};
		regular = {
			fg = "white";
		};
		directory = {
			fg = "light_blue";
			bold = true;
		};
		link = {
			fg = "cyan";
			bold = true;
		};
		socket = {
			fg = "light_magenta";
			bold = true;
		};
		executable = {
			fg = "light_green";
			bold = true;
		};
		link_invalid = {
			fg = "red";
			bold = true;
		};
		tabs.chars = {
			active_prefix = "[";
			active_postfix = "]";
			inactive_prefix = " ";
			inactive_postfix = "";
			divider = " | ";
			scroll_front_prefix = "";
			scroll_front_postfix = "";
			scroll_front_prestring = "« ";
			scroll_front_poststring = " ";
			scroll_back_prefix = "";
			scroll_back_postfix = "";
			scroll_back_prestring = " ";
			scroll_back_poststring = " »";
			padding_prefix = " ";
			padding_postfix = " ";
			padding_fill = " ";
		};
	};
}
