{ ... }:
{
	programs.git = {
		enable = true;
		userName  = "axax-loll";
		userEmail  = "irongidra@gmail.com";
		extraConfig = {
			init.defaultBranch = "main";
		};
	};
}
