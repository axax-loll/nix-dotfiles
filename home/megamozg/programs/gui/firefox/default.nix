{ pkgs, inputs, ... }:
{
	imports = [
		./user
		
		./settings.nix
		./search.nix
	];
	programs.firefox = {
		enable = true;
		languagePacks = [ "ru" ];
		profiles.dragora = {
			id = 0;
			name = "megamozg";
			isDefault = true;
			extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
				#VERY IMPORTANT
				omnisearch
				ublock-origin
				sponsorblock
				darkreader
				vimium-c
				newtab-adapter
				censor-tracker

				# MISC
				tabcenter-reborn
				firefox-color
				stylus
				translate-web-pages
			];
		};
		policies = {
			CaptivePortal = false;
			DisableFirefoxStudies = true;
			DisablePocket = true;
			DisableTelemetry = true;
			# DisableFirefoxAccounts = true;
			DisableFormHistory = true;
			DisplayBookmarksToolbar = false;
			DontCheckDefaultBrowser = true;
			DisableProfileRefresh = true;
			PromptForDownloadLocation = false;
			NetworkPrediction = false;
			showSearchBar = true;
			DisableSetDesktopBackground = true;
			LegacyProfiles = true;
			ManualAppUpdateOnly = true;
			DisableFirefoxScreenshots = true;
			HardwareAcceleration = true;
			FirefoxHome = {
			  Pocket = false;
			  Snippets = false;
			};
			SanitizeOnShutdown = {
			  Cache = true;
			  History = false;
			  Cookies = false;
			  Downloads = true;
			  FormData = true;
			  Sessions = true;
			  OfflineApps = true;
			};
			PasswordManagerEnabled = true;
		};
	};
}
