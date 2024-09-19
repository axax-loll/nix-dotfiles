{ pkgs, ... }:
{
	programs.firefox.profiles.dragora = {
		search = {
			force = true;
			default = "Google";
			engines = {
				{
					"Nix Packages" = {
						urls = [{
							template = "https://search.nixos.org/packages";
							params = [
								{ name = "type"; value = "packages"; }
								{ name = "query"; value = "{searchTerms}"; }
							];
						}];
						icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
						definedAliases = [ "@np" ];
					};
				
					"NixOS Wiki" = {
						urls = [{ template = "https://wiki.nixos.org/index.php?search={searchTerms}"; }];
						iconUpdateURL = "https://wiki.nixos.org/favicon.png";
						updateInterval = 24 * 60 * 60 * 1000;
						definedAliases = [ "@nw" ];
					};
				
					"Bing".metaData.hidden = true;
					"DuckDuckGo".metaData.hidden = true;
					"Wikipedia (en)".metaData.hidden = true;
					"Google".metaData.alias = "@g";
				}
			};
		};
	};
}
