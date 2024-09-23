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
		tlp = {
			enable = true;
			settings = {
				CPU_SCALING_GOVERNOR_ON_AC="performance";
				CPU_SCALING_GOVERNOR_ON_BAT="performance";
				CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_performance";
				CPU_ENERGY_PERF_POLICY_ON_AC = "balance_performance";
				RUNTIME_PM_ON_AC="auto";
				RUNTIME_PM_ON_BAT="auto";
			};
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

		# SIMPLE SERVICES
		dbus.implementation = "broker";
		upower.enable = true;
		thermald.enable = true;
		# thinkfan.enable = true;
		gvfs.enable = true;
	};
}
