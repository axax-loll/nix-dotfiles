{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		/*---+---+---+---+---+---+
		 | G | L | O | B | A | L |
		 +---+---+---+---+---+---*/
		
		
		:root {
		
		  /*  Global Border Radius
		   *  applied to ALL UI elements
		   */ --uc-border-radius: 16px;
		
		
		  /*  The distance the Statuspanel floats
		   *  away from the window border
		   *  0 places directly in the corner
		   */ --uc-status-panel-spacing: 12px;
		
		}
		
		
		/* remove window control buttons */
		.titlebar-buttonbox-container { display: none !important; }
		
		
		#pageActionButton { display: none !important; }
		
		#PanelUI-menu-button { padding: 0px !important; }
		#PanelUI-menu-button .toolbarbutton-icon { width: 1px !important; }
		#PanelUI-menu-button .toolbarbutton-badge-stack { padding: 0px !important; }
		
		
		
		
		
		/*---+---+---+---+---+---+---+
		 | T | O | O | L | B | A | R |
		 +---+---+---+---+---+---+---*/
		
		
		/*  Position of the Personal Toolbar
		 *  possible values:
		 *  0 – toolbar on top
		 *  4 – toolbar on bottom
		 */
		:root {
		  --uc-toolbar-position: 0;
		}
		
		/*  Darken the Personal Toolbar by X amount
		 *  where X = 1 means pure black
		 *  and X = 0 means no darkening at all
		 */
		@media (prefers-color-scheme: dark) { :root {
		  --uc-darken-toolbar: 0.2;
		}} @media (prefers-color-scheme: light) { :root {
		  --uc-darken-toolbar: 0;
		}}
		
		
		
		
		/*---+---+---+---+---+---+---+
		 | U | R | L | — | B | A | R |
		 +---+---+---+---+---+---+---*/
		
		
		:root {
		
		  /*  Width of the URL Bar for the Oneline layout
		   *  If enabled the max-width is applied on focus
		   *  otherwise the URL Bar will always be it's min-width
		   */ --uc-urlbar-min-width: 0vw;
		      --uc-urlbar-max-width: 100vw;
		
		  /*  Position of the URL Bar
		   *  possible values:
		   *  1 – tabs on the right
		   *  3 – tabs on the left
		   */ --uc-urlbar-position: 1;
		
		  /*  Firefox can be a little wonky with the vertical
		   *  URL Bar placement. Change this variable to adapt
		   *  to this when necessary.
		   */ --uc-urlbar-top-spacing: 1px;
		
		}
		
		
		/* Disable the Navigation Buttons */
		#back-button,
		#forward-button { display: none !important; }
		
		/* Disables the Tracking Protection Shield */
		/* #tracking-protection-icon-container { display: none !important; } */
		
		/* Encryption and Permissions icons */
		  /* Only hides permission items */
		  #identity-permission-box { display: none !important; }
		  /* Hides encryption AND permission items */
		  /* #identity-box { display: none !important } */
		
		/* Hide everything BUT the zoom indicator within the URL Bar */
		/* #page-action-buttons > :not(#urlbar-zoom-button) { display: none !important; } */
		
		/* Hide the »Go«-arrow in the URL Bar */
		#urlbar-go-button { display: none !important; }
		
		/* Hides the Extensions Menu Icon */
		#unified-extensions-button { display: -moz-inline-block !important; }
		
		
		
		
		
		/*---+---+---+---+---+---+---+
		 | T | A | B | — | B | A | R |
		 +---+---+---+---+---+---+---*/
		
		
		:root {
		
		  /*  Allow tabs to have dynamic widths based on
		   *  the Tab Bars maximum width
		   */ --uc-active-tab-width:   clamp(100px, 18vw, 170px);
		      --uc-inactive-tab-width: clamp(100px, 15vw, 90px);
		
		
		  /*  Enable this to always show the Tab Close button
		   *  possible values:
		   *  show: -moz-inline-block
		   *  hide: none
		   */ --show-tab-close-button: none;
		
		  /*  Enable this to only show the Tab Close button on tab hover
		   *  possible values:
		   *  show: -moz-inline-block
		   *  hide: none
		   */ --show-tab-close-button-hover: none;
		
		  /*  Hide the all Tabs button from the Tab Bar
		   *  possible values:
		   *  show: -moz-box
		   *  hide: none
		   */ --uc-show-all-tabs-button: none;
		
		
		  /*  Left and Right "dip" of the container indicator
		   *  0px equals tab width
		   *  higer values make the indicator smaller
		   */ --container-tabs-indicator-margin: 10px;
		
		  /*  Amount of Glow to add to the container indicator
		   *  Setting it to 0 disables the Glow
		   */ --uc-identity-glow: 0 1px 10px 1px;
		
		}
		
		
		/* Hide the secondary Tab Label
		 * e.g. playing indicator (the text, not the icon) */
		.tab-secondary-label { display: none !important; }
	'';
}
