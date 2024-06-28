xcopy "Y:\Scripts\PUCRS\layoutModification.xml" "C:\Users\Default\AppData\Local\Microsoft\Windows\Shell" /y
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "CleanupProfiles" /t REG_DWORD /d "7" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "dontdisplaylastusername" /t REG_DWORD /d "1" /f
powercfg.exe -x -monitor-timeout-ac 20
powercfg.exe -x -monitor-timeout-dc 20