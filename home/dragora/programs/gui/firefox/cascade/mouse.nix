{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		/*---+---+---+---+---+---+
		 | G | L | O | B | A | L |
		 +---+---+---+---+---+---*/
		
		
		 :root {
		
		  /*  Global Border Radius
		   *  applied to ALL UI elements
		   */ --uc-border-radius: 0px;
		
		
		  /*  The distance the Statuspanel floats
		   *  away from the window border
		   *  0 places directly in the corner
		   */ --uc-status-panel-spacing: 12px;
		
		  /*  Top margin for the Page Action Buttons
		   *  inside the URL Bar. This might need
		   *  customisation depending on yout setup!
		   */ --uc-page-action-margin: 7px;
		
		}
		
		
		/* remove window control buttons */
		.titlebar-buttonbox-container { display: none !important; }
		
		
		#pageActionButton { display: none !important; }
		
		
		
		
		
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
		   
		  /*  Position of the Personal Toolbar
		   *  possible values:
		   *  0 – toolbar on top
		   *  4 – toolbar on bottom
		   */ --uc-toolbar-position: 0;
		
		}
		
		
		/* Disable the Navigation Buttons */
		/* #back-button,
		#forward-button { display: none !important; } */
		
		/* Disables the Tracking Protection Shield */
		/* #tracking-protection-icon-container { display: none !important; } */
		
		/* Encryption and Permissions icons */
		  /* Only hides permission items */
		  #identity-permission-box { display: none !important; }
		  /* Hides encryption AND permission items */
		  /* #identity-box { display: none !important } */
		
		/* Adjust margin of the urlbar buttons. */
		.urlbar-page-action > image { margin-top: var(--uc-page-action-margin) !important; }
		
		/* Hide Container Tab labels inside the URL bar */
		#userContext-icons { display: none !important; }
		
		
		/* Hide the »Go«-arrow in the URL Bar */
		#urlbar-go-button { display: none !important; }
		
		/* Hides the Extensions Menu Icon */
		/* #unified-extensions-button { display: none !important; } */
		
		
		#alltabs-button { margin-top: 5px !important; }
		
		
		
		
		
		/*---+---+---+---+---+---+---+
		 | T | A | B | — | B | A | R |
		 +---+---+---+---+---+---+---*/
		
		
		:root {
		
		  /*  Allow tabs to have dynamic widths based on
		   *  the Tab Bars maximum width
		   */ --uc-active-tab-width:   clamp(100px, 30vw, 300px);
		      --uc-inactive-tab-width: clamp(100px, 20vw, 200px);
		
		
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
