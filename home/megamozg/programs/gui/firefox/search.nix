{ pkgs, ... }:
{
	programs.firefox.profiles.dragora = {
		search = {
			force = true;
			default = "Google";
			engines = {
				"Nix Packages" = {
					urls = [{
						template = "https://search.nixos.org/packages?channel=unstable";
						params = [
							{ name = "type"; value = "packages"; }
							{ name = "query"; value = "{searchTerms}"; }
						];
					}];
					icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
					definedAliases = [ "@np" ];
				};
			
				"Bing".metaData.hidden = true;
				"DuckDuckGo".metaData.hidden = true;
				"Wikipedia (en)".metaData.hidden = true;
				"Google".metaData.alias = "@g";
			};
		};
	};
}
