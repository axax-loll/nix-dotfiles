{ config, ... }:
{
	xdg.configFile = with config.lib.stylix.colors; {
		"waybar/style.css".text = ''
		      * {
		        font-family: JetBrainsMono NerdFont, SourceHanSansJP;
		        font-weight: bold;
		        font-size: 16px;
		      }
		
		      window#waybar {
		        background-color: transparent;
		        color: #${base06};
		      }
		
		      window#waybar > box {
		        margin: 5px 0px 0px 0px;
		        background-color: #${base00};
		        border-top: 0px;
		        border-bottom: 0;
		        border-style: solid;
		        border-color: #3C3836;
		        box-shadow: 1 1 3 1px #101010;
		      }
		
		      #workspaces button {
		        background-color: #${base03};
		        border-radius: 20px;
		        margin: 2px;
		        padding: 0px;
		        padding-right: 6px;
		        padding-left: 6px;
		        color: #${base06};
		        min-height: 25px;
		        transition: all 0.4s ease-in-out;
		      }
		
		      #workspaces button label{
		        color: #${base06};
		        font-weight: bolder;
		      }
		
		      #workspaces button.empty{
		        background: #${base02};
		      }
		
		      #workspaces button.active {
		        background: radial-gradient(circle, #${base06} 0%, #${base0D} 50%, #${base0B} 100%); 
		        background-size: 400% 400%;
		        animation: gradient 5s linear infinite;
		        transition: all 0.3s ease-in-out;
		        border-color: #45475a;
		      }
		
		      #workspaces button.active label {
		        color: #${base02};
		        font-weight: bolder;
		      }
		
		      @keyframes gradient {
			      0% {
				      background-position: 0px 50px;
			      }
			      50% {
				      background-position: 100px 30px;
			      }
			      100% {
				      background-position: 0px 50px;
			      }
		      }
		
		      @keyframes gradient_f {
			      0% {
				      background-position: 0px 200px;
			      }
		          50% {
		              background-position: 200px 0px;
		          }
			      100% {
				      background-position: 400px 200px;
			      }
		      }
		
		      @keyframes gradient_f_nh {
			      0% {
				      background-position: 0px 200px;
			      }
			      100% {
				      background-position: 200px 200px;
			      }
		      }
		
		      #custom-date,
		      #battery,
		      #backlight
		      #clock,
		      #pulseaudio,
		      #workspaces,
		      #window,
		      #language,
		      #text,
		      #custom-launcher,
		      #custom-separator,
		
		      #tray {
		        color: #${base06};
		        background: #${base00};
		        padding: 0 0.4em;
		        padding-top: 0px;
		        padding-bottom: 2px;
		        border-style: solid;
		        min-height: 30px;
		      }
		
		      #battery {
		        margin: 3 4 3 4px;
		        padding: 0 0.4em;
		      }
		
		      #backlight {
		        margin: 3 4 3 4px;
		        padding: 0 0.4em;
		      }
		
		      #custom-date {
		        margin: 3 4 3 4px;
		        padding: 0 0.4em;
		      }
		
		      #clock {
		        margin: 3 4 3 4px;
		        padding: 0 0.4em;
		      }
		
		      #language {
		        margin: 3 4 3 4px;
		        padding: 0 0.4em;
		      }
		
		      #pulseaudio {
		        margin: 3 4 3 4px;
		        padding: 0 0.4em;
		      }
		
		      #custom-separator {
		        padding: 0px;
		        margin: 0px;
		      }
		
		      #custom-launcher {
		        margin-left: 0px;
		        margin-right: 0px;
		        padding-right: 0.6em;
		        border-radius: 0 20 20 0px;
		      }
		
		      #workspaces {
		        margin: 3 0 3 0px;
		        border-radius: 14 14 14 14px;
		      }
		    '';
	};
}
