#!/bin/bash

# this bash script gets the printer status using /dev/tcp
# bash needs --enable-net-redirections build option

# change printer IP address as needed

exec 5<>/dev/tcp/192.168.1.111/9100 || echo "Printer not found."; exit 1

echo -e "\033%-12345X@PJL" >&5
echo @PJL INFO STATUS      >&5
echo -e "\033%-12345X"     >&5

( trap exit SIGINT; cat <&5 )      # Cntl-C when finished

exec 5>&-
exec 5<&-
echo Finished reading printer.
exit 0
 
