{
	outputs = { self, nixpkgs, home-manager, ... }@inputs:
	let system = "x86_64-linux"; in
	{
		nixosConfigurations = {
			# PC HOST
			karbur = nixpkgs.lib.nixosSystem {
				specialArgs = { inherit system inputs; };
				modules = [ ./hosts/karbur ];
			};
			# THINKPAD HOST
			wysvort = nixpkgs.lib.nixosSystem {
				specialArgs = { inherit system inputs; };
				modules = [ ./hosts/wysvort ];
			};
		};
		
		homeConfigurations = {
			# PC USER
			dragora = home-manager.lib.homeManagerConfiguration {
				pkgs = nixpkgs.legacyPackages.x86_64-linux;
				extraSpecialArgs = { inherit inputs; };
				modules = [ ./home/dragora ];
			};
			# THINKPAD USER
			megamozg = home-manager.lib.homeManagerConfiguration {
				pkgs = nixpkgs.legacyPackages.x86_64-linux;
				extraSpecialArgs = { inherit inputs; };
				modules = [ ./home/megamozg ];
			};
		};
	};
	
	inputs = {
		# REPOSITORIES NIXPKGS
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
		nur.url = "github:nix-community/NUR";
		
		# ONE LINE SOFTWARE
		ayugram-desktop.url = "github:kaeeraa/ayugram-desktop/release?submodules=1";
		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
		nixos-hardware.url = "github:NixOS/nixos-hardware/master";
		flake-parts.url = "github:hercules-ci/flake-parts";
		stylix.url = "github:danth/stylix";
		yazi.url = "github:sxyazi/yazi";
		
		# TWO LINE SOFTWARE
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		anyrun = {
			url = "github:anyrun-org/anyrun";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		spicetify-nix = {
			url = "github:Gerg-L/spicetify-nix";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		firefox-addons = {
			url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
			inputs.nixpkgs.follows = "nixpkgs";
		};
    auto-cpufreq = {
      url = "github:AdnanHodzic/auto-cpufreq";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		# HYPRlAND
		hyprland-plugins = {
			url = "github:hyprwm/hyprland-plugins";
			inputs.hyprland.follows = "hyprland";
		};
		Hyprspace = {
			url = "github:KZDKM/Hyprspace";
			inputs.hyprland.follows = "hyprland";
		};
		hyprgrass = {
			url = "github:horriblename/hyprgrass";
			inputs.hyprland.follows = "hyprland";
		};
		hyprfocus = {
			url = "github:pyt0xic/hyprfocus";
			inputs.hyprland.follows = "hyprland";
		};
	};
}
