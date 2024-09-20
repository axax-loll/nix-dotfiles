{ config, ... }:
{
	programs.cava = {
		enable = true;
		settings = {
			general = {
				# framerate = 24;
				# bars = 0;
				# bar_width = 1;
				# bar_spacing = 1;
			};
			color = with config.lib.stylix.colors; {
				gradient = 1;
				gradient_color_1 = "'#${base0E}'";
				gradient_color_2 = "'#${base0D}'";
				gradient_color_3 = "'#${base0C}'";
				gradient_color_4 = "'#${base0B}'";
				gradient_color_5 = "'#${base0A}'";
				gradient_color_6 = "'#${base09}'";
			};
		};
	};
}
