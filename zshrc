# first load the theme
# TODO check for theme
source "$BASE/themes/$THEME"

autoload -U compinit
compinit -i

# reprocess and redraw each new command
function precmd {
	exitcode=$?
	LPOUTPUT=""
	for m in $LPRIMARY; do
		OUTPUT=""
		source "$BASE/modules/$m"
		LPOUTPUT="$LPOUTPUT$(theme_lprimary "$OUTPUT")"
	done
	LSOUTPUT=""
	for m ($LSECONDARY); do
		OUTPUT=""
		source "$BASE/modules/$m"
		LSOUTPUT="$LSOUTPUT$(theme_lsecondary "$OUTPUT")"
	done
	RPOUTPUT=""
	for m in $RPRIMARY; do
		OUTPUT=""
		source "$BASE/modules/$m"
		RPOUTPUT="$RPOUTPUT$(theme_rprimary "$OUTPUT")"
	done
	RSOUTPUT=""
	for m in $RSECONDARY; do
		OUTPUT=""
		source "$BASE/modules/$m"
		RSOUTPUT="$RSOUTPUT$(theme_rsecondary "$OUTPUT")"
	done
	theme_prompt
}
