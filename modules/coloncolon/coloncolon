# This function is awesome, but if anyone sees any problems with using colon, please let me know
# Usage:
# :: host
#	Attempts to ssh to host, if host is found in the known_hosts file. This is commonly encrypted now so it doesn't work on modern systems
# ::
#	Reruns the previous command every second, only stopping when the previous command returns a successful exit code
# :: ssh host
#	Attempts to run "ssh host" every second, only stopping when "ssh host" returns a successful exit code
# :: 30 mount /mnt/usb
#	Attempts to mount /mnt/usb, delaying 30 seconds inbetween tries
function :: ()
{
	if [ -z "$1" ]; then
		cc_loop 1 $(fc -nl - -1)

	elif [ -n "$(ssh-keygen -H -F "${1##*@}")" ]; then
		ssh $*

	elif [[ "$1" = <-> ]]; then
		cc_loop $*

	elif [[ "$1" = "::" ]]; then
		echo "Invalid command: $*"
	       
	else
		cc_loop 1 $*
	fi
}

function cc_loop ()
{
	delay=$1
	shift
	which $1 &>/dev/null
	if [ $? -eq 0 ]; then
		echo "Running $* every $delay secs until it exits cleanly"
		until $*; do
			sleep $delay
		done
	else
		echo "Invalid command: $*"
	fi
}
# vim: filetype=zsh noexpandtab
