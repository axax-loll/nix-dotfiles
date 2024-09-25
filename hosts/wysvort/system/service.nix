{ pkgs, ... }: 
{
	# SERVICES ANY PROGRAM
	services = {
		# SERVICES WITH SETTINGS
		getty = {
			autologinUser = "megamozg";
			# greetingLine = "";
		};
		xserver = {
			xkb = {
    			layout = "us";
    			variant = "qwerty";
    			options = "grp:caps_toggle";
			};
			displayManager.gdm = {
				enable = false;
				wayland = true;
			};
		};
		tailscale = {
			enable = true;
			useRoutingFeatures = "both";
		};
		system76-scheduler = {
			enable = true;
			settings = {
				cfsProfiles.enable = true;
				processScheduler.pipewireBoost.enable = true;
			};
		};
		fprintd = {
			enable = true;
			package = pkgs.fprintd-tod;
			tod = {
				enable = true;
				driver = pkgs.libfprint-2-tod1-vfs0090;
			};
		};
		# greetd = {
		# 	enable = false;
		# 	package = pkgs.greetd.regreet;
		# 	settings = {
		# 		default_session = {
		# 			command = "cage -s regreet";
		# 			user = "megamozg";
		# 		};
		# 	};
		# };
		transmission = {
			enable = true;
			package = pkgs.transmission_4;
			openRPCPort = true;
		};
		tlp = {
			enable = true;
			settings = {
				TLP_DEFAULT_MODE = "BAT";

				# NETWORKING
				WIFI_PWR_ON_AC = "off";
				WIFI_PWR_ON_BAT = "on";

				# CPU
				CPU_SCALING_GOVERNOR_ON_AC = "performance";
				CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
				CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
				CPU_ENERGY_PERF_POLICY_ON_AC = "balance_performance";
				CPU_BOOST_ON_AC = 1;
				CPU_BOOST_ON_BAT = 1;

				# GRAPHICS
				RADEON_DPM_STATE_ON_AC = "performance";
				RADEON_DPM_STATE_ON_BAT = "battery";
				RADEON_POWER_PROFILE_ON_AC = "default";
				RADEON_POWER_PROFILE_ON_BAT = "default";

				# IDK
				RUNTIME_PM_ON_AC = "auto";
				RUNTIME_PM_ON_BAT = "auto";
				USB_AUTOSUSPEND = 0;
			};
		};
		auto-cpufreq = {
			enable = true;
			settings = {
				battery = {
					governor = "powersave";
					turbo = "never";
				};
				charger = {
					governor = "performance";
					turbo = "auto";
				};
			};
		};

		# SIMPLE SERVICES
		dbus.implementation = "broker";
		upower.enable = true;
		thermald.enable = true;
		# thinkfan.enable = true;
		gvfs.enable = true;
	};
}
