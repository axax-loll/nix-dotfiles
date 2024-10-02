{ config, lib, ... }:
{
	programs.helix.themes = lib.mkForce {
		base16 = let
			base00 = "#151515";
			base01 = "#1F1F1F";
			base02 = "#2E2E2E";
			base03 = "#424242";
			base04 = "#BBB6B6";
			base05 = "#E8E3E3";
			base06 = "#E8E3E3";
			base07 = "#E8E3E3";
			base08 = "#B66467";
			base09 = "#D9BC8C";
			base0A = "#D9BC8C";
			base0B = "#8C977D";
			base0C = "#8AA6A2";
			base0D = "#8DA3B9";
			base0E = "#A988B0";
			base0F = "#BBB6B6";
		in {
			"attributes" = base09;
			"comment" = { fg = base03; modifiers = [ "italic" ]; };
			"constant" = base09;
			"constant.character.escape" = base0C;
			"constant.numeric" = base09;
			"constructor" = base0D;
			"debug" = base03;
			"diagnostic" = { modifiers = [ "underlined" ]; };
			"diff.delta" = base09;
			"diff.minus" = base08;
			"diff.plus" = base0B;
			"error" = base08;
			"function" = base0D;
			"hint" = base03;
			"info" = base0D;
			"keyword" = base0E;
			"label" = base0E;
			"namespace" = base0E;
			"operator" = base05;
			"special" = base0D;
			"string"  = base0B;
			"type" = base0A;
			"variable" = base08;
			"variable.other.member" = base0B;
			"warning" = base09;
			
			"markup.bold" = { fg = base0A; modifiers = [ "bold" ]; };
			"markup.heading" = base0D;
			"markup.italic" = { fg = base0E; modifiers = [ "italic" ]; };
			"markup.link.text" = base08;
			"markup.link.url" = { fg = base09; modifiers = [ "underlined" "italic" ]; };
			"markup.list" = base08;
			"markup.quote" = base0C;
			"markup.raw" = base0B;
			"markup.strikethrough" = { modifiers = [ "crossed_out" ]; };
			
			"diagnostic.hint" = { underline = { style = "curl"; }; };
			"diagnostic.info" = { underline = { style = "curl"; }; };
			"diagnostic.warning" = { underline = { style = "curl"; }; };
			"diagnostic.error" = { underline = { style = "curl"; }; };
			
			"ui.background" = { bg = base00; };
			"ui.bufferline.active" = { fg = base00; bg = base03; modifiers = [ "bold" ]; };
			"ui.bufferline" = { fg = base04; bg = base00; };
			"ui.cursor" = { fg = base0A; modifiers = [ "reversed" ]; };
			"ui.cursor.insert" = { fg = base0A; modifiers = [ "reversed" ]; };
			"ui.cursorline.primary" = { fg = base05; bg = base01; };
			"ui.cursor.match" = { fg = base0A; modifiers = [ "reversed" ]; };
			"ui.cursor.select" = { fg = base0A; modifiers = [ "reversed" ]; };
			"ui.gutter" = { bg = base00; };
			"ui.help" = { fg = base06; bg = base01; };
			"ui.linenr" = { fg = base03; bg = base00; };
			"ui.linenr.selected" = { fg = base04; bg = base01; modifiers = [ "bold" ]; };
			"ui.menu" = { fg = base05; bg = base01; };
			"ui.menu.scroll" = { fg = base03; bg = base01; };
			"ui.menu.selected" = { fg = base01; bg = base04; };
			"ui.popup" = { bg = base01; };
			"ui.selection" = { bg = base02; };
			"ui.selection.primary" = { bg = base02; };
			"ui.statusline" = { fg = base04; bg = base01; };
			"ui.statusline.inactive" = { bg = base01; fg = base03; modifiers = [ "bold" ]; };
			"ui.statusline.insert" = { fg = base00; bg = base0B; modifiers = [ "bold" ]; };
			"ui.statusline.normal" = { fg = base00; bg = base0D; modifiers = [ "bold" ]; };
			"ui.statusline.select" = { fg = base00; bg = base0F; modifiers = [ "bold" ]; };
			"ui.text" = base05;
			"ui.text.focus" = base05;
			"ui.virtual.indent-guide" = { fg = base03; };
			"ui.virtual.wrap" = { fg = base03; };
			"ui.virtual.inlay-hint" = { fg = base03; };
			"ui.virtual.ruler" = { bg = base01; };
			"ui.virtual.jump-label" = { fg = base0A; modifiers = [ "bold" ]; };
			"ui.window" = { bg = base01; };
		};
	};
}
