{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		:root {
		
		  --toolbarbutton-border-radius: var(--uc-border-radius) !important;
		  --tab-border-radius: var(--uc-border-radius) !important;
		  --arrowpanel-border-radius: var(--uc-border-radius) !important;
		
		}
		
		
		
		
		
		#main-window,
		#toolbar-menubar,
		#TabsToolbar,
		#navigator-toolbox,
		#sidebar-box,
		#nav-bar { box-shadow: none !important; }
		
		
		#main-window,
		#toolbar-menubar,
		#TabsToolbar,
		#PersonalToolbar,
		#navigator-toolbox,
		#sidebar-box,
		#nav-bar { border: none !important; }
		
		
		/* remove "padding" left and right from tabs */
		.titlebar-spacer { display: none !important; }
		
		/* fix Shield Icon padding */
		#urlbar-input-container[pageproxystate="valid"]
		  > #tracking-protection-icon-container
		  > #tracking-protection-icon-box
		  > #tracking-protection-icon {
		    padding-bottom: 1px;
		}
		
		
		
		
		
		#PersonalToolbar {
		
		  padding: 6px !important;
		  box-shadow: inset 0 0 50vh rgba(0, 0, 0, var(--uc-darken-toolbar)) !important;;
		
		}
		
		
		
		
		
		#statuspanel #statuspanel-label {
		
		  border: none !important;
		  border-radius: var(--uc-border-radius) !important;
		
		}
		#statuspanel #statuspanel-label { margin: 0 0 var(--uc-status-panel-spacing) var(--uc-status-panel-spacing) !important; }
	'';
}