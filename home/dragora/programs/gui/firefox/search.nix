{ pkgs, ... }:
{
	programs.firefox.profiles.dragora = {
		search = {
			force = true;
			engines = {
				"Bing".metaData.hidden = true;
				"YouTube" = {
					iconUpdateURL = "https://youtube.com/favicon.ico";
					updateInterval = 24 * 60 * 60 * 1000;
					definedAliases = [ "@yt" ];
					urls = [
						{
							template = "https://www.youtube.com/results";
							params = [
								{
									name = "search_query";
									value = "{searchTerms}";
								}
							];
						}
					];
				};
				"Nix Packages" = {
					icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
					definedAliases = [ "@np" ];
					urls = [
						{
							template = "https://search.nixos.org/packages";
							params = [
								{
									name = "type";
									value = "packages";
								}
								{
									name = "query";
									alue = "{searchTerms}";
								}
							];
						}
					];
				};
				"NixOS Options" = {
					icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
					definedAliases = [ "@no" ];
					urls = [
						{
							template = "https://search.nixos.org/options";
							params = [
								{
									name = "channel";
									value = "unstable";
								}
								{
									name = "query";
									alue = "{searchTerms}";
								}
							];
						}
					];
				};
				"Home Manager" = {
					icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
					definedAliases = [ "@hm" ];
					urls = [
						{
							template = "https://mipmip.github.io/home-manager-option-search/";
							params = [
								{
									name = "query";
									alue = "{searchTerms}";
								}
							];
						}
					];
				};
			};
		};
	};
}
