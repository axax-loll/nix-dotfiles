{ pkgs, ... }:
{
	# UNGOOGLED CHROMIUM
	programs.chromium = {
		enable = true;
		package = pkgs.ungoogled-chromium;
		extensions = [
			{ id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # DARK READER
			{ id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # UBLOCK
			{ id = "hfjbmagddngcpeloejdejnfgbamkjaeg"; } # VIMIUM C
			{ id = "cglpcedifkgalfdklahhcchnjepcckfn"; } # VIMIUM TAB
		];
	};
}
