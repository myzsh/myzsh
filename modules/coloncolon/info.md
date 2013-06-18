## Summary
Re-run command every sec until successful exit, and other fun things

## Requires
nothing

## Usage
* Place in EXTRA section of .zshrc

Use as following:
* :: hostname
  * Attempts to ssh to host, if host is found in the known_hosts file. This is commonly encrypted now so it doesn't work on modern systems
* :: ssh host
  * Attempts to run "ssh host" every second, only stopping when "ssh host" returns a successful exit code
* :: 30 mount /mnt/usb
  * Attempts to mount /mnt/usb, delaying 30 seconds inbetween tries
* :: !!
  * Re-run the previous command.
