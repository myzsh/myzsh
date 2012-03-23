# first load the theme
# check for theme, select our default if nothing's set
[ ! -e "$BASE/themes/$THEME" ] && THEME="default"
source "$BASE/themes/$THEME"

# reprocess and redraw each new command
function precmd {
	# Capture our exit code
	exitcode=$?
	# Figure out our left primary output
	LPOUTPUT=""
	for m in $LPRIMARY; do
		OUTPUT=""
		source "$BASE/modules/$m"
		LPOUTPUT="$LPOUTPUT$(theme_lprimary "$OUTPUT")"
	done
	# Figure out our left secondary output
	LSOUTPUT=""
	for m ($LSECONDARY); do
		OUTPUT=""
		source "$BASE/modules/$m"
		LSOUTPUT="$LSOUTPUT$(theme_lsecondary "$OUTPUT")"
	done
	# Figure out our right primary output
	RPOUTPUT=""
	for m in $RPRIMARY; do
		OUTPUT=""
		source "$BASE/modules/$m"
		RPOUTPUT="$RPOUTPUT$(theme_rprimary "$OUTPUT")"
	done
	# Figure out our right secondary output
	RSOUTPUT=""
	for m in $RSECONDARY; do
		OUTPUT=""
		source "$BASE/modules/$m"
		RSOUTPUT="$RSOUTPUT$(theme_rsecondary "$OUTPUT")"
	done
	# Now that we have all of our variables set, let our theme compute it's prompt
	theme_prompt
}
