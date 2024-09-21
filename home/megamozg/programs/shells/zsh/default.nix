{ pkgs, ... }:
{
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		completionInit = "autoload -U compinit && compinit";
		zplug = {
			enable = true;
			plugins = [
				{ name = "nix-community/nix-zsh-completions"; }
				{ name = " jnooree/zoxide-zsh-completion"; }
				{ name = "toku-sa-n/zsh-dot-up"; }
				{ name = "anatolykopyl/doas-zsh-plugin"; }
				{ name = " zshzoo/cd-ls"; }
			];
		};
	};
}
