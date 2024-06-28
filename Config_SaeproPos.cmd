del /q /s "C:\Users\Public\Desktop\SAEPRO.lnk"
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /v "user" /t REG_SZ /d "2+/Q7A3LFh0=" /f
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /v "lics" /t REG_SZ /d "0" /f
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /v "dwg" /t REG_SZ /d "1" /f
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /v "lic" /t REG_SZ /d "jQAAppdZCEAGH50O9frAHQ==" /f
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /ve /t REG_SZ /d "" /f
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /v "tema" /t REG_SZ /d "0" /f
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /v "lict" /t REG_SZ /d "mZl721B+KZIO9MW57hNRKg==" /f
reg add "HKCU\SOFTWARE\Wow6432Node\cienge\saepro" /v "users" /t REG_SZ /d "2+/Q7A3LFh0=" /f
reg load "HKU\Default_User" C:\Users\Default\ntuser.dat
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /v "user" /t REG_SZ /d "2+/Q7A3LFh0=" /f
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /v "lics" /t REG_SZ /d "0" /f
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /v "dwg" /t REG_SZ /d "1" /f
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /v "lic" /t REG_SZ /d "jQAAppdZCEAGH50O9frAHQ==" /f
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /ve /t REG_SZ /d "" /f
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /v "tema" /t REG_SZ /d "0" /f
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /v "lict" /t REG_SZ /d "mZl721B+KZIO9MW57hNRKg==" /f
reg add "HKU\Default_User\SOFTWARE\Wow6432Node\cienge\saepro" /v "users" /t REG_SZ /d "2+/Q7A3LFh0=" /f
reg unload "HKU\Default_User"
xcopy "Y:\Applications\Saepro\Cienge" "C:\Program Files (x86)\Cienge\SAEPRO" /y /s /c /q
xcopy "Y:\Applications\Saepro\start.bat" "C:\Program Files (x86)\Cienge\SAEPRO" /y /q
mkdir "C:\Users\Default\AppData\Roaming\Cienge\SAEPRO\1.0.0.28"
xcopy "Y:\Applications\Saepro\Saepro.lnk" "C:\Users\Public\Desktop" /y