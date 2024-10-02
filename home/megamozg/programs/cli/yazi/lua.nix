{ ... }:
{
  programs.yazi.initLua =  ''
      require("no-status"):setup()

      require("yatline"):setup({
      	section_separator = { open = "", close = "" },
      	part_separator = { open = "", close = "" },
      	inverse_separator = { open = "", close = "" },
      
      	style_a = {
      		fg = "black",
      		bg_mode = {
      			normal = "magenta",
      			select = "yellow",
      			un_set = "blue"
      		}
      	},
      	style_b = { bg = "black", fg = "white" },
      	style_c = { bg = "black", fg = "white" },
      
      	permissions_t_fg = "green",
      	permissions_r_fg = "yellow",
      	permissions_w_fg = "red",
      	permissions_x_fg = "cyan",
      	permissions_s_fg = "darkgray",
      
      	tab_width = 20,
      	tab_use_inverse = false,
      
      	selected = { icon = "󰻭", fg = "yellow" },
      	copied = { icon = "", fg = "green" },
      	cut = { icon = "", fg = "red" },
      
      	total = { icon = "󰮍", fg = "yellow" },
        succ = { icon = "", fg = "green" },
      	fail = { icon = "", fg = "red" },
      	found = { icon = "󰮕", fg = "blue" },
      	processed = { icon = "󰐍", fg = "green" },
      
      	show_background = true,
      
      	display_header_line = true,
      	display_status_line = true,
      
      	header_line = {
      		left = {
      			section_a = {
              			{type = "line", custom = false, name = "tabs", params = {"left"}},
      			},
      			section_b = {
      			},
      			section_c = {
      			}
      		},
      		right = {
      			section_a = {
      			},
      			section_b = {
              			{type = "coloreds", custom = true, name = {{" 󰇥 ", "yellow"}}},
      			},
      			section_c = {
              			{type = "coloreds", custom = false, name = "count"},
      			}
      		}
      	},
      
      	status_line = {
      		left = {
      			section_a = {
      			},
      			section_b = {
      			},
      			section_c = {
      			}
      		},
      		right = {
      			section_a = {
      			},
      			section_b = {
      			},
      			section_c = {
      			}
      		}
      	},
      })

      Header:children_add(function()
      	if ya.target_family() ~= "unix" then
		      return ui.Line {}
	      end
	      return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ": "):fg("red")
      end, 500, Header.LEFT)
  '';
}
