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
				enable = true;
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

		# SIMPLE SERVICES
		dbus.implementation = "broker";
		upower.enable = true;
		thermald.enable = true;
		# thinkfan.enable = true;
		gvfs.enable = true;
	};
}
