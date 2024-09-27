{ pkgs, config, inputs, spicetify-nix, ... }:
let
	spicePkgs = spicetify-nix.legacyPackages.${pkgs.system};
in
{
	imports = [ inputs.spicetify-nix.homeManagerModules.default ];
	programs.spicetify = {
		enable = true;
		theme = spicePkgs.themes.sleek;
		colorScheme = "custom";
		customColorScheme = with config.lib.stylix.colors; {
			# BASE 16 SCHEME
			text = "${base07}";
			subtext = "${base06}";
			sidebar-text = "${base07}";
			main = "${base00}";
			sidebar = "${base02}";
			player = "${base00}";
			card = "${base00}";
			shadow = "${base00}";
			selected-row = "${base0C}";
			button = "${base0B}";
			button-active = "${base0B}";
			button-disabled = "${base03}";
			tab-active = "${base0A}";
			notification = "${base0A}";
			notification-error = "${base08}";
			misc = "${base02}";
		};
		enabledExtensions = with spicePkgs.extensions; [
			# OFFICIAL
			fullAppDisplay
			shuffle

			#COMMUNITY
			adblockify
			adblock
			
			historyShortcut
			beautifulLyrics
			playlistIcons
			betterGenres
			powerBar
			seekSong
			history
		];
	};
}
