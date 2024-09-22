{
	inputs = {
		# REPOSITORIES NIXPKGS
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
		nur.url = "github:nix-community/NUR";
		
		# ONE LINE SOFTWARE
		ayugram-desktop.url = "github:kaeeraa/ayugram-desktop/release?submodules=1";
		nixos-hardware.url = "github:NixOS/nixos-hardware/master";
		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
		stylix.url = "github:danth/stylix";
		
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
		fuji-wallpapers = {
			type = "github";
			owner = "axax-loll";
			repo = "fuji-wallpapers";
			flake = false;
		};
	};

	outputs = { self, nixpkgs, nur, nixos-hardware, home-manager, stylix, nixvim, anyrun, spicetify-nix, ... }@inputs:
	let
		system = "x86_64-linux";
		hpakag = nixpkgs.legacyPackages.${system};
	in 
	{
		# PC IN MY ROOM
		nixosConfigurations.karbur = nixpkgs.lib.nixosSystem {
			specialArgs = { inherit system inputs; };
			modules = [ 
				./hosts/karbur
				home-manager.nixosModules.home-manager
				stylix.nixosModules.stylix
				nur.nixosModules.nur
			];
		};
		homeConfigurations.dragora = home-manager.lib.homeManagerConfiguration {
			extraSpecialArgs = { inherit inputs spicetify-nix hpakag; };
			modules = [ 
				./home/dragora
				spicetify-nix.homeManagerModules.default
				anyrun.homeManagerModules.default
				nixvim.homeManagerModules.nixvim
				stylix.homeManagerModules.stylix
				nur.hmModules.nur
			];
		};

		# FUCKING THINKPAD T14 GEN1 OH MY GOOOOD (where?)
		nixosConfigurations.wysvort = nixpkgs.lib.nixosSystem {
			specialArgs = { inherit system inputs; };
			modules = [ ./hosts/wysvort ];
		};
		homeConfigurations.megamozg = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.x86_64-linux;
			extraSpecialArgs = { inherit inputs spicetify-nix hpakag; };
			modules = [ ./home/megamozg ];
		};
	};
}
