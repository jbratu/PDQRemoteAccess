REM Don't forget to run this as an administrator in an elevated command prompt and reboot.
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1
shutdown /r