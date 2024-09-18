{ pkgs, inputs, ... }:
{
	programs.anyrun = {
		enable = true;
		config = {
			plugins = with inputs.anyrun.packages.${pkgs.system}; [
				applications
				translate
				websearch
				symbols
				shell
			];
			closeOnClick = true;
			hidePluginInfo = true;
			hideIcons = false;
			layer = "overlay";
			maxEntries = 6;
		};
		extraConfigFiles = {
			"applications.ron".text = ''
				Config(
					desktop_actions: true,
					max_entries: 5, 
					terminal: Some("kitty"),
				)
			'';
			"websearch.ron".text = ''
				Config(
					prefix: ":s",
					engines: [Google] 
				)
			'';
			"shell.ron".text = ''
				Config(
					prefix: ":sh",
					shell: fish,
				)
			'';
		};
	};
}
