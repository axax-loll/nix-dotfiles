{ inputs, ... }:
{
  imports = [ auto-cpufreq.nixosModules.default ];
  programs.auto-cpufreq = { # CPU PERFMORMANCE
    enable = true;
    settings = {
      charger = { # AC MODE
        governor = "performance";
        turbo = "auto";
        energy_perf_bias = "balance_performance";
        platform_profile = "balanced";
        scaling_min_freq = 1400000;
        scaling_max_freq = 4000000;
      };
      battery = { # BAT MODE
        governor = "powersave";
        turbo = "auto";
        energy_perf_bias = "balance_power";
        platform_profile = "low-power";
        enable_thresholds = true;
        # start_threshold = 20;
        # stop_threshold = 80;
      };
    };
  };
}
