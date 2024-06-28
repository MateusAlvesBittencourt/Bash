xcopy "Y:\Scripts\PUCRS\cepuc.jpg" "C:\Windows\Web\Screen" /y
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "Wallpaper" /t Reg_SZ /d "C:\Windows\Web\Screen\cepuc.jpg" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "WallpaperStyle" /t Reg_SZ /d "4" /f
reg load "HKU\Default_User" C:\Users\Default\ntuser.dat
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "Wallpaper" /t Reg_SZ /d "C:\Windows\Web\Screen\cepuc.jpg" /f
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "WallpaperStyle" /t Reg_SZ /d "4" /f
reg unload "HKU\Default_User"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "LockScreenImage" /t Reg_SZ /d "C:\Windows\Web\Screen\cepuc.jpg" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "LockScreenOverlaysDisabled" /t Reg_DWORD /d "1" /f
net user Evento Event@s1 /add