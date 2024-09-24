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
				CPU_SCALING_GOVERNOR_ON_AC = "performance";
				CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

				CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
				CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

				CPU_MIN_PERF_ON_AC = 0;
				CPU_MAX_PERF_ON_AC = 100;
				CPU_MIN_PERF_ON_BAT = 0;
				CPU_MAX_PERF_ON_BAT = 20;

				
				RUNTIME_PM_ON_AC="auto";
				RUNTIME_PM_ON_BAT="auto";
				
				START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
				STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
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
