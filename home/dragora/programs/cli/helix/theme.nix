{ config, ... }:
{
	programs.helix.themes = {
		"attribute" = "yellow";
		"type" = "yellow";
		"type.enum.variant" = "teal";

		"constructor" = "sapphire";

		"constant" = "peach";
		"constant.character" = "teal";
		"constant.character.escape" = "pink";

		"string" = "green";
		"string.regexp" = "pink";
		"string.special" = "blue";
		"string.special.symbol" = "red";

		"comment" = { fg = "overlay2", modifiers = ["italic"] };

		"variable" = "text";
		"variable.parameter" = { fg = "maroon", modifiers = ["italic"] };
		"variable.builtin" = "red";
		"variable.other.member" = "teal";

		"label" = "sapphire"; # used for lifetimes

		"punctuation" = "overlay2";
		"punctuation.special" = "sky";

		"keyword" = "mauve";
		"keyword.control.conditional" = { fg = "mauve", modifiers = ["italic"] };

		"operator" = "sky";

		"function" = "blue";
		"function.macro" = "mauve";

		"tag" = "blue";

		"namespace" = { fg = "yellow", modifiers = ["italic"] };

		"special" = "blue"; # fuzzy highlight

		"markup.heading.marker" = { fg = "peach", modifiers = ["bold"] };
		"markup.heading.1" = "lavender";
		"markup.heading.2" = "mauve";
		"markup.heading.3" = "green";
		"markup.heading.4" = "yellow";
		"markup.heading.5" = "pink";
		"markup.heading.6" = "teal";
		"markup.list" = "mauve";
		"markup.bold" = { modifiers = ["bold"] };
		"markup.italic" = { modifiers = ["italic"] };
		"markup.link.url" = { fg = "blue", modifiers = ["italic", "underlined"] };
		"markup.link.text" = "blue";
		"markup.raw" = "flamingo";

		"diff.plus" = "green";
		"diff.minus" = "red";
		"diff.delta" = "blue";

		"ui.background" = { fg = "text", bg = "base" };

		"ui.linenr" = { fg = "surface1" };
		"ui.linenr.selected" = { fg = "lavender" };

		"ui.statusline" = { fg = "subtext1", bg = "mantle" };
		"ui.statusline.inactive" = { fg = "surface2", bg = "mantle" };
		"ui.statusline.normal" = { fg = "base", bg = "lavender", modifiers = ["bold"] };
		"ui.statusline.insert" = { fg = "base", bg = "green", modifiers = ["bold"]  };
		"ui.statusline.select" = { fg = "base", bg = "flamingo", modifiers = ["bold"]  };

		"ui.popup" = { fg = "text", bg = "surface0" };
		"ui.window" = { fg = "crust" };
		"ui.help" = { fg = "overlay2", bg = "surface0" };

		"ui.bufferline" = { fg = "subtext0", bg = "mantle" };
		"ui.bufferline.active" = { fg = "mauve", bg = "base", underline = { color = "mauve", style = "line" } };
		"ui.bufferline.background" = { bg = "crust" };

		"ui.text" = "text";
		"ui.text.focus" = { fg = "text", bg = "surface0", modifiers = ["bold"] };
		"ui.text.inactive" = { fg = "overlay1" };

		"ui.virtual" = "overlay0";
		"ui.virtual.ruler" = { bg = "surface0" };
		"ui.virtual.indent-guide" = "surface0";
		"ui.virtual.inlay-hint" = { fg = "surface1", bg = "mantle" };
		"ui.virtual.jump-label" = { fg = "rosewater", modifiers = ["bold"] };

		"ui.selection" = { bg = "surface1" };

		"ui.cursor" = { fg = "base", bg = "secondary_cursor" };
		"ui.cursor.primary" = { fg = "base", bg = "rosewater" };
		"ui.cursor.match" = { fg = "peach", modifiers = ["bold"] };

		"ui.cursor.primary.normal" = { fg = "base", bg = "lavender" };
		"ui.cursor.primary.insert" = { fg = "base", bg = "green" };
		"ui.cursor.primary.select" = { fg = "base", bg = "flamingo" };

		"ui.cursor.normal" = { fg = "base", bg = "secondary_cursor_normal" };
		"ui.cursor.insert" = { fg = "base", bg = "secondary_cursor_insert" };
		"ui.cursor.select" = { fg = "base", bg = "secondary_cursor" };

		"ui.cursorline.primary" = { bg = "cursorline" };

		"ui.highlight" = { bg = "surface1", modifiers = ["bold"] };

		"ui.menu" = { fg = "overlay2", bg = "surface0" };
		"ui.menu.selected" = { fg = "text", bg = "surface1", modifiers = ["bold"] };

		"diagnostic.error" = { underline = { color = "red", style = "curl" } };
		"diagnostic.warning" = { underline = { color = "yellow", style = "curl" } };
		"diagnostic.info" = { underline = { color = "sky", style = "curl" } };
		"diagnostic.hint" = { underline = { color = "teal", style = "curl" } };

		"error" = "red";
		"warning" = "yellow";
		"info" = "sky";
		"hint" = "teal";
	};
}
