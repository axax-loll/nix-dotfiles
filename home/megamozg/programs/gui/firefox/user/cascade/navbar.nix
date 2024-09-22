{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		#navigator-toolbox:not(:-moz-lwtheme) { background: var(--toolbar-field-background-color) !important; }
		
		
		
		#nav-bar {
		
		  padding-block-start: 0px !important;
		
		  border:     none !important;
		  box-shadow: none !important;
		  background: transparent !important;
		
		}
		
		
		#urlbar,
		#urlbar * {
		
		  padding-block-start: var(--uc-urlbar-top-spacing) !important;
		
		  outline: none !important;
		  box-shadow: none !important;
		
		}
		
		
		#urlbar-background { border: transparent !important; }
		
		#urlbar[focused='true']
		  > #urlbar-background,
		#urlbar:not([open])
		  > #urlbar-background { background: var(--toolbar-field-background-color) !important; }
		
		
		#urlbar[open]
		  > #urlbar-background { background: var(--toolbar-field-background-color) !important; }
		
		
		.urlbarView-row:hover
		  > .urlbarView-row-inner,
		.urlbarView-row[selected]
		  > .urlbarView-row-inner { background: var(--toolbar-field-focus-background-color) !important; }
		
		
		.urlbar-icon, #urlbar-go-button { margin: auto; }
		.urlbar-page-action { padding: 0 inherit !important; }
		.urlbar-page-action .urlbar-icon { margin-top: 6px !important; }
	'';
}
