{ pkgs, ...}:
{
	programs.micro = {
		enable = true;
		settings = {
			clipboard = "terminal";
			colorscheme = "helios";
			autosu = true;
			mkparents = true;
			scrollbar = true;
			softwrap = true;
			status = false;
			statusline = false;
			statusformatl = "q";
			savehistory = true;
			saveundo = true;
		};
	};
	xdg.configFile."micro/colorschemes/helios.micro".text = ''
		color-link comment "bold white"
		color-link constant "cyan"
		color-link constant.bool "bold cyan"
		color-link constant.bool.true "bold green"
		color-link constant.bool.false "bold red"
		color-link constant.string "yellow"
		color-link constant.string.url "underline blue, white"
		#color-link constant.number "constant"
		color-link constant.specialChar "bold magenta"
		color-link identifier "bold red"
		color-link identifier.macro "bold red"
		color-link identifier.var "bold blue"
		#color-link identifier.class "bold green"
		color-link identifier.class "bold white"
		color-link statement "bold yellow"
		color-link symbol "red"
		color-link symbol.brackets "blue"
		color-link symbol.tag "bold blue"
		color-link symbol.tag.extended "bold green"
		color-link preproc "bold cyan"
		color-link type "green"
		color-link type.keyword "bold green"
		color-link special "magenta"
		color-link ignore "default"
		color-link error "bold ,brightred"
		color-link todo "underline black,brightyellow"
		color-link hlsearch "white,darkgreen"
		color-link indent-char ",brightgreen"
		color-link line-number "white"
		color-link line-number.scrollbar "green"
		color-link statusline "white,blue"
		color-link tabbar "white,blue"
		color-link current-line-number "red"
		color-link current-line-number.scroller "red"
		color-link diff-added "green"
		color-link diff-modified "yellow"
		color-link diff-deleted "red"
		color-link gutter-error ",red"
		color-link gutter-warning "red"
		color-link color-column "cyan"
		color-link underlined.url "underline blue, white"
		color-link divider "blue"
		color-link match-brace "black,cyan"
		color-link tab-error "brightred"
		color-link trailingws "brightred"
	'';
}
