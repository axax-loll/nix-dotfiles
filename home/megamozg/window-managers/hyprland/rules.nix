{ config, lib, ... }:
{
	wayland.windowManager.hyprland.settings = with config.lib.stylix.colors; {
		windowrulev2 = [
			# "rounding 8, floating:1"
			# "noshadow, floating:0"
			# "noanim, floating:0"

			"workspace 2 silent, class:^(firefox)$"
			"workspace 3 silent, class:^(Spotify)$"
			"workspace 4 silent, class:^(com.ayugram)$"
			"workspace 4 silent, class:^(vesktop)$"
			"workspace 5 silent, class:^(obsidian)$"
			"workspace 6 silent, class:^(anicli)$"

			"float, class:^(termfloat)$"
			"size 650 430, class:^(termfloat)$"
			"move center, class:^(termfloat)$"

			"float, class:^(tfm)$"
			"size 800 350, class:^(tfm)$"
			"move center, class:^(tfm)$"

			"float, title:^(Media viewer)$"
			"fullscreen, title:^(Media viewer)$"
			"size 670 540, title:^(Media viewer)$"

			"float, class:^(xdg-desktop-portal-gtk)$"
			"size 807 570, class:^(xdg-desktop-portal-gtk)$"

			"nodim, class:^(mpv)$"
			"float, class:^(anicliru)$"
			"size 660 630, class:^(anicliru)$"
			"bordercolor rgb(${base08}) rgb(${base09}) 45deg, class:^(anicliru)$"

			"bordercolor rgb(${base0E}, title:^(Картинка в картинке)$"
			"noshadow, title:^(Картинка в картинке)$"
		];
	};
}
