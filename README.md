# check-printer-status-with-bash
bash script asks printer for status

This is a bash shell script to send a PJL status request to a network printer. Change the IP address to the actual printer to check. Use Cntl-C to quit waiting for printer messages. Bash needs the --enable-net-redirections compile time option enabled. The output of the @PJL INFO STATUS might vary depending on the printer brand.

My Xerox Phaser 6500n gives this output from the printerstatus.sh script:

```
@PJL INFO STATUS
CODE=10001
DISPLAY=""
ONLINE=TRUE
Finished reading printer.
