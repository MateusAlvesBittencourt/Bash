reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%PATH%;C:\Program Files\Docker\Docker\resources\bin" /f
net localgroup docker-users "portoalegre\domain users" /add
net localgroup docker-users "pucrsnet\domain users" /add