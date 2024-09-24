{ ... }:
{
	programs.fzf = {
		enable = true;
		enableFishIntegration = true;
		defaultOptions = [
			"--margin 5"
		];
	};
}
