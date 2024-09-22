{ ... }:
{
	programs.hyprlock = {
		enable = true;
		settings = {
			hide_cursor = true;
			background = {
				path = "~/.walls/wp.png";
				blur_passes = 8;
				blur_size = 3;
			};
		};
	};
}
