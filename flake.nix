{
	inputs = {
		# REPOSITORIES NIXPKGS
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";

		# OTHER REPOSITORIES
		ayugram-desktop.url = "github:kaeeraa/ayugram-desktop/release?submodules=1";
		chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
		nur.url = "github:nix-community/NUR";
		
		# ONE LINE SOFTWARE
		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
		nixos-hardware.url = "github:NixOS/nixos-hardware/master";
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
		# Hyprspace = {
		# 	url = "github:KZDKM/Hyprspace";
		# 	inputs.hyprland.follows = "hyprland";
		# };
	};

	outputs = { self, nixpkgs, chaotic, nur, nixos-hardware, home-manager, stylix, nixvim, anyrun, spicetify-nix, ... }@inputs:
	{
		# PC IN MY ROOM
		nixosConfigurations.karbur = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [ 
				./hosts/karbur
				home-manager.nixosModules.home-manager
				chaotic.nixosModules.default
				stylix.nixosModules.stylix
				nur.nixosModules.nur
			];
		};
		homeConfigurations.dragora = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.x86_64-linux;
			extraSpecialArgs = { inherit inputs spicetify-nix; };
			modules = [ 
				./home/dragora
				spicetify-nix.homeManagerModules.default
				chaotic.homeManagerModules.default
				anyrun.homeManagerModules.default
				nixvim.homeManagerModules.nixvim
				stylix.homeManagerModules.stylix
				nur.hmModules.nur
			];
		};

		# FUCKING THINKPAD T14 GEN1 OH MY GOOOOD (where?)
		nixosConfigurations.wysvort = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				./hosts/wysvort
				home-manager.nixosModules.home-manager
				chaotic.nixosModules.default
				stylix.nixosModules.stylix
				nur.nixosModules.nur
			];
		};
		homeConfigurations.megamozg = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.x86_64-linux;
			extraSpecialArgs = { inherit inputs spicetify-nix; };
			modules = [
				./home/megamozg
				spicetify-nix.homeManagerModules.default
				chaotic.homeManagerModules.default
				stylix.homeManagerModules.stylix
			];
		};
	};
}
