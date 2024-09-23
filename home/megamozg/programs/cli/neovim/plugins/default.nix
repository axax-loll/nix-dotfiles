{ nixvim, ... }:
{
	imports = [
		./gitsigns.nix
		./which-key.nix
		./telescope.nix
		./conform.nix
		./lsp.nix
		./nvim-cmp.nix
		./mini.nix
		./treesitter.nix
		./indent-blankline.nix
		./autopairs.nix
		./neo-tree.nix
	];
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
