{ ... }:
{
	programs.git = {
		enable = true;
		userName  = "axax-loll";
		userEmail  = "irongidra@gmail.com";
		extraConfig = {
			color.ui = true;
			init.defaultBranch = "main";
			safe.directory = "/home/dragora/.flake";
		};
	};
}
