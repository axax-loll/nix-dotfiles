{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		#TabsToolbar { display: none !important; }
		#nav-bar { width: 100vw !important; }
		
		
		
		#browser { position: relative; }
		#sidebar-box[sidebarcommand*="tabcenter"] #sidebar-header { display: none; }
		
		#sidebar-box[sidebarcommand*="tabcenter"]:not([hidden]) {
		
		  display: block;
		
		  position: absolute;
		  top: 0; bottom: 0;
		  z-index: 1;
		
		  min-width: 50px !important; max-width: 50px !important;
		
		  border-right: none;
		
		  transition: all 0.2s ease;
		
		  overflow: hidden;
		
		}
		
		[sidebarcommand*="tabcenter"] #sidebar,
		#sidebar-box[sidebarcommand*="tabcenter"]:hover { min-width: 10vw !important; width: 30vw !important; max-width: 250px !important; }
		
		[sidebarcommand*="tabcenter"] #sidebar { height: 100%; max-height: 100%; }
		
		#sidebar-box[sidebarcommand*="tabcenter"]:not([hidden]) ~ #appcontent { margin-left: 50px; }
		#main-window[inFullscreen][inDOMFullscreen] #appcontent { margin-left: 0; }
		/* Removes gap between active tab highlight and edge of bar */
		#sidebar-box[sidebarcommand="tabcenter-reborn_ariasuni-sidebar-action"] #sidebar-header, #sidebar-box[sidebarcommand="tabcenter-reborn_ariasuni-sidebar-action"] ~ #sidebar-splitter {
		    display: none;
		}
	'';
}
