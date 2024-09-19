{ ... }:
{
	programs.joshuto.keymap = {
		default_view = {
			keymap = [
			  { keys = ["escape"]; commands = ["escape"] };
			  { keys = ["t"; "a"]; commands = ["new_tab"] };
			  { keys = ["t"; "c"]; commands = ["new_tab --cursor"] };
			  { keys = ["t"; "A"]; commands = ["new_tab --current"] };
			  { keys = ["t"; "q"]; commands = ["close_tab"] };
			  { keys = ["q"]; commands = ["close_tab"] };
			  { keys = ["ctrl+c"]; commands = ["quit"] };
			  { keys = ["Q"]; commands = ["quit --output-current-directory"] };
			
			  { keys = ["R"]; commands = ["reload_dirlist"] };
			  { keys = ["z"; "r"]; commands = ["reload_dirlist"] };
			  { keys = ["z"; "z"]; commands = ["zi"] };
			  { keys = ["z"; "h"]; commands = ["toggle_hidden"] };
			  { keys = ["z"; "f"]; commands = ["flat 2"] };
			  { keys = ["z"; "F"]; commands = ["flat 0"] };
			  { keys = ["backspace"]; commands = ["toggle_hidden"] };
			  { keys = ["t"; "s"]; commands = ["tab_switch 1"] };
			  { keys = ["t"; "S"]; commands = ["tab_switch -1"] };
			  { keys = ["\t"]; commands = ["tab_switch 1"] };
			  { keys = ["backtab"]; commands = ["tab_switch -1"] };
			
			  { keys = ["alt+1"]; commands = ["tab_switch_index 1"] };
			  { keys = ["alt+2"]; commands = ["tab_switch_index 2"] };
			  { keys = ["alt+3"]; commands = ["tab_switch_index 3"] };
			  { keys = ["alt+4"]; commands = ["tab_switch_index 4"] };
			  { keys = ["alt+5"]; commands = ["tab_switch_index 5"] };
			
			  { keys = ["1"]; commands = ["numbered_command 1"] };
			  { keys = ["2"]; commands = ["numbered_command 2"] };
			  { keys = ["3"]; commands = ["numbered_command 3"] };
			  { keys = ["4"]; commands = ["numbered_command 4"] };
			  { keys = ["5"]; commands = ["numbered_command 5"] };
			  { keys = ["6"]; commands = ["numbered_command 6"] };
			  { keys = ["7"]; commands = ["numbered_command 7"] };
			  { keys = ["8"]; commands = ["numbered_command 8"] };
			  { keys = ["9"]; commands = ["numbered_command 9"] };
			
			  # arrow keys
			  { keys = ["arrow_up"]; commands = ["cursor_move_up"] };
			  { keys = ["arrow_down"]; commands = ["cursor_move_down"] };
			  { keys = ["arrow_left"]; commands = ["cd .."] };
			  { keys = ["arrow_right"]; commands = ["open"] };
			  { keys = ["\n"]; commands = ["open"] };
			  { keys = ["home"]; commands = ["cursor_move_home"] };
			  { keys = ["end"]; commands = ["cursor_move_end"] };
			  { keys = ["page_up"]; commands = ["cursor_move_page_up"] };
			  { keys = ["page_down"]; commands = ["cursor_move_page_down"] };
			  { keys = ["ctrl+u"]; commands = ["cursor_move_page_up 0.5"] };
			  { keys = ["ctrl+d"]; commands = ["cursor_move_page_down 0.5"] };
			  { keys = ["ctrl+b"]; commands = ["cursor_move_page_up"] };
			  { keys = ["ctrl+f"]; commands = ["cursor_move_page_down"] };
			
			  # vim-like keybindings
			  { keys = ["j"]; commands = ["cursor_move_down"] };
			  { keys = ["k"]; commands = ["cursor_move_up"] };
			  { keys = ["h"]; commands = ["z"] };
			  { keys = ["l"]; commands = ["open"] };
			  { keys = ["g"; "g"]; commands = ["cursor_move_home"] };
			  { keys = ["G"]; commands = ["cursor_move_end"] };
			  { keys = ["e"]; commands = ["open_with"] };
			
			  { keys = ["H"]; commands = ["cursor_move_page_home"] };
			  { keys = ["L"]; commands = ["cursor_move_page_middle"] };
			  { keys = ["M"]; commands = ["cursor_move_page_end"] };
			
			  { keys = ["["]; commands = ["parent_cursor_move_up"] };
			  { keys = ["]"]; commands = ["parent_cursor_move_down"] };
			
			  { keys = ["c"; "d"]; commands = [":cd "] };
			  { keys = ["x"; "x"]; commands = ["cut_files"] };
			  { keys = ["c"; "c"]; commands = ["copy_files"] };
			  { keys = ["c"; "n"]; commands = ["copy_filename"] };
			  { keys = ["c"; "e"]; commands = ["copy_filename_without_extension"] };
			  { keys = ["c"; "f"]; commands = ["copy_filepath"] };
			  { keys = ["c"; "F"]; commands = ["copy_filepath --all-selected=true"] };
			  { keys = ["c"; "p"]; commands = ["copy_dirpath"] };
			
			  { keys = ["p"; "l"]; commands = ["symlink_files --relative=false"] };
			  { keys = ["p"; "L"]; commands = ["symlink_files --relative=true"] };
			
			  { keys = ["delete"]; commands = ["delete_files"] };
			  { keys = ["d"; "d"]; commands = ["delete_files --noconfirm"] };
			  { keys = ["d"; "D"]; commands = ["delete_files --noconfirm --permanently"] };
			
			  { keys = ["v"; "v"]; commands = ["paste_files"] };
			  { keys = ["v"; "V"]; commands = ["paste_files --overwrite=true"] };
			
			  { keys = ["r"; "r"]; commands = ["rename_append"] };
			  { keys = ["r"; "R"]; commands = ["rename_prepend"] };
			  { keys = ["r"; "c"]; commands = [":rename "] };
			
			  { keys = ["m"; "f"]; commands = [":touch "] };
			  { keys = ["m"; "d"]; commands = [":mkdir "] };
			
			  { keys = [" "]; commands = ["select --toggle=true"] };
			  { keys = ["v"; "a"]; commands = ["select --all=true --toggle=true"] };
			  { keys = ["v"; "i"]; commands = ["toggle_visual"] };
			
			  { keys = ["w"]; commands = ["show_tasks --exit-key=w"] };
			  { keys = ["r"; "b"]; commands = ["bulk_rename"] };
			  { keys = ["="]; commands = ["set_mode"] };
			
			  { keys = [":"]; commands = [":"] };
			  { keys = [";"]; commands = [":"] };
			
			  { keys = ["'"]; commands = [":shell "] };
			
			  { keys = ["/"]; commands = [":search "] };
			  { keys = ["|"]; commands = [":search_inc "] };
			  { keys = ["\\"]; commands = [":search_glob "] };
			  { keys = ["f"; "s"]; commands = ["search_fzf"] };
			  { keys = ["f"; "d"]; commands = ["subdir_fzf"] };
			
			  { keys = ["n"]; commands = ["search_next"] };
			  { keys = ["N"]; commands = ["search_prev"] };
			
			  { keys = ["s"; "r"]; commands = ["sort reverse"] };
			  { keys = ["s"; "l"]; commands = ["sort lexical"] };
			  { keys = ["s"; "L"]; commands = ["sort lexical --reverse=true"] };
			  { keys = ["s"; "m"]; commands = ["sort mtime"] };
			  { keys = ["s"; "M"]; commands = ["sort mtime --reverse=true"] };
			  { keys = ["s"; "n"]; commands = ["sort natural"] };
			  { keys = ["s"; "N"]; commands = ["sort natural --reverse=true"] };
			  { keys = ["s"; "s"]; commands = ["sort size"] };
			  { keys = ["s"; "S"]; commands = ["sort size --reverse=true"] };
			  { keys = ["s"; "e"]; commands = ["sort ext"] };
			  { keys = ["s"; "E"]; commands = ["sort ext --reverse=true"] };
			
			  { keys = ["m"; "s"]; commands = ["linemode size"] };
			  { keys = ["m"; "m"]; commands = ["linemode mtime"] };
			  { keys = ["m"; "M"]; commands = ["linemode size | mtime"] };
			  { keys = ["m"; "u"]; commands = ["linemode user"] };
			  { keys = ["m"; "U"]; commands = ["linemode user | group"] };
			  { keys = ["m"; "p"]; commands = ["linemode perm"] };
			
			  { keys = ["g"; "r"]; commands = ["cd /"] };
			  { keys = ["g"; "c"]; commands = ["cd ~/.config"] };
			  { keys = ["g"; "w"]; commands = ["cd ~/.walls"] };
			  { keys = ["g"; "d"]; commands = ["cd ~/Загрузки"] };
			  { keys = ["g"; "h"]; commands = ["cd ~/"] };
			  { keys = ["?"]; commands = ["help"] };
			]
		};
	};
}
