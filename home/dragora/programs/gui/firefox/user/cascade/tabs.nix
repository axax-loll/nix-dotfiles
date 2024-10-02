{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		/* remove gap after pinned tabs */
		#tabbrowser-tabs[haspinnedtabs]:not([positionpinnedtabs])
		  > #tabbrowser-arrowscrollbox
		  > .tabbrowser-tab:nth-child(1 of :not([pinned], [hidden])) { margin-inline-start: 0 !important; }
		
		
		/* Hides the list-all-tabs button*/
		#alltabs-button { display: var(--uc-show-all-tabs-button) !important; }
		
		
		/* remove tab shadow */
		.tabbrowser-tab
		  >.tab-stack
		  > .tab-background { box-shadow: none !important;  }
		
		
		/* multi tab selection */
		#tabbrowser-tabs:not([noshadowfortests]) .tabbrowser-tab:is([multiselected])
		  > .tab-stack
		  > .tab-background:-moz-lwtheme { outline-color: var(--toolbarseparator-color) !important; }
		
		
		
		
		
		/* tab close button options */
		.tabbrowser-tab:not([pinned]) .tab-close-button { display: var(--show-tab-close-button) !important; }
		.tabbrowser-tab:not([pinned]):hover .tab-close-button { display: var(--show-tab-close-button-hover) !important }
		
		
		
		
		
		/* adaptive tab width */
		.tabbrowser-tab[selected][fadein]:not([pinned]) { max-width: var(--uc-active-tab-width) !important; }
		.tabbrowser-tab[fadein]:not([selected]):not([pinned]) { max-width: var(--uc-inactive-tab-width) !important; }
		
		
		
		
		
		/* container tabs indicator */
		.tabbrowser-tab[usercontextid]
		  > .tab-stack
		  > .tab-background
		  > .tab-context-line {
		
		    margin: -1px var(--container-tabs-indicator-margin) 0 var(--container-tabs-indicator-margin) !important;
		    height: 1px !important;
		
		    box-shadow: var(--uc-identity-glow) var(--identity-tab-color) !important;
		
		}
		
		
		
		
		
		/* show favicon when media is playing but tab is hovered */
		.tab-icon-image:not([pinned]) { opacity: 1 !important; }
		
		
		/* Makes the speaker icon to always appear if the tab is playing (not only on hover) */
		.tab-icon-overlay:not([crashed]),
		.tab-icon-overlay[pinned][crashed][selected] {
		
		  top: 5px !important;
		  z-index: 1 !important;
		
		  padding: 1.5px !important;
		  inset-inline-end: -8px !important;
		  width: 16px !important; height: 16px !important;
		
		  border-radius: 10px !important;
		
		}
		
		
		/* style and position speaker icon */
		.tab-icon-overlay:not([sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) {
		
		  stroke: transparent !important;
		  background: transparent !important;
		  opacity: 1 !important; fill-opacity: 0.8 !important;
		
		  color: currentColor !important;
		
		  stroke: var(--toolbar-bgcolor) !important;
		  background-color: var(--toolbar-bgcolor) !important;
		
		}
		
		
		/* change the colours of the speaker icon on active tab to match tab colours */
		.tabbrowser-tab[selected] .tab-icon-overlay:not([sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) {
		
		  stroke: var(--toolbar-bgcolor) !important;
		  background-color: var(--toolbar-bgcolor) !important;
		
		}
		
		
		.tab-icon-overlay:not([pinned], [sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) { margin-inline-end: 9.5px !important; }
		
		
		.tabbrowser-tab:not([image]) .tab-icon-overlay:not([pinned], [sharing], [crashed]) {
		
		  top: 0 !important;
		
		  padding: 0 !important;
		  margin-inline-end: 5.5px !important;
		  inset-inline-end: 0 !important;
		
		}
		
		
		.tab-icon-overlay:not([crashed])[soundplaying]:hover,
		.tab-icon-overlay:not([crashed])[muted]:hover,
		.tab-icon-overlay:not([crashed])[activemedia-blocked]:hover {
		
		  color: currentColor !important;
		  stroke: var(--toolbar-color) !important;
		  background-color: var(--toolbar-color) !important;
		  fill-opacity: 0.95 !important;
		
		}
		
		
		.tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[soundplaying]:hover,
		.tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[muted]:hover,
		.tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover {
		
		  color: currentColor !important;
		  stroke: var(--toolbar-color) !important;
		  background-color: var(--toolbar-color) !important;
		  fill-opacity: 0.95 !important;
		
		}
		
		
		/* speaker icon colour fix */
		#TabsToolbar .tab-icon-overlay:not([crashed])[soundplaying],
		#TabsToolbar .tab-icon-overlay:not([crashed])[muted],
		#TabsToolbar .tab-icon-overlay:not([crashed])[activemedia-blocked] { color: var(--toolbar-color) !important; }
		
		
		/* speaker icon colour fix on hover */
		#TabsToolbar .tab-icon-overlay:not([crashed])[soundplaying]:hover,
		#TabsToolbar .tab-icon-overlay:not([crashed])[muted]:hover,
		#TabsToolbar .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover { color: var(--toolbar-bgcolor) !important; }
		
		/* selected tab colour fix*/
		.tabbrowser-tab[selected] .tab-content {
		  background-color: var(--uc-highlight-colour) !important;
		}
	'';
}
