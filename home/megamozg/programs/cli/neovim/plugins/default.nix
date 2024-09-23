 nixvim, ... }:
{
	imports = [ nixvim.homeManagerModules.nixvim ];
	programs.nixvim = {
		plugins = {
			sleuth = {
				enable = true;
			};
			todo-comments = {
			  enable = true;
			  signs = true;
			};
		};
	};
}
