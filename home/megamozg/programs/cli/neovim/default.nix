{ nixvim, inputs, ... }:
{
	imports = [ inputs.nixvim.homeManagerModules.nixvim ./plugins ];
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		vimdiffAlias = true;
		globals = {
			mapleader = " ";
			maplocalleader = " ";
			have_nerd_font = true;
		};
		opts = {
			number = true;
			relativenumber = true;
			mouse = "a";
			clipboard = {
				providers.wl-copy.enable = true;
				register = "unnamedplus";
			};
			breakindent = true;
			smarttab = true;
			tabstop = 4;
			shiftwidth = 4;
			softtabstop = 4;
			autoindent = true;
			undofile = true;
			ignorecase = true;
			smartcase = true;
			signcolumn = "yes";
			updatetime = 250;
			timeoutlen = 300;
			splitright = true;
			splitbelow = true;
			list = true;
			listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";
			inccommand = "split";
			cursorline = true;
			scrolloff = 10;
			hlsearch = true;
		};
	};
}
