xcopy "pucrs.jpg" "C:\Windows\Web\Screen" /y

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "LockScreenImage" /t Reg_SZ /d "C:\Windows\Web\Screen\pucrs.jpg" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "LockScreenOverlaysDisabled" /t Reg_DWORD /d "1" /f

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t Reg_dword /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCortanaButton /t Reg_dword /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t Reg_dword /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t Reg_dword /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t Reg_dword /d "0" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t Reg_dword /d "1" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoPinningStoreToTaskbar" /t Reg_dword /d "1" /f

reg load "HKU\Default_User" C:\Users\Default\ntuser.dat
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t Reg_DWORD /d "0" /f
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t Reg_dword /d 0 /f
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCortanaButton /t Reg_dword /d 0 /f
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t Reg_dword /d 0 /f
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t Reg_dword /d "0" /f
reg add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t Reg_dword /d "0" /f
reg add "HKU\Default_User\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t Reg_dword /d "1" /f
reg add "HKU\Default_User\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoPinningStoreToTaskbar" /t Reg_dword /d "1" /f
reg unload "HKU\Default_User"

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWelcomeScreen" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableCAD" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f

reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v SecurityHealth /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "ExplorerRibbonStartsMinimized" /t Reg_DWORD /d "2" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t Reg_dword /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /t REG_SZ /d "http://poa01wuc01.pucrsnet.br:8530" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /t REG_SZ /d "http://poa01wuc01.pucrsnet.br:8530" /f

xcopy "browserspolicytemplates" "C:\Windows\PolicyDefinitions" /y /s /c

reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HomepageLocation" /t REG_SZ /d "https://pucrs.br" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "RestoreOnStartup" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HideFirstRunExperience" /t REG_DWORD /d "1" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ManagedSearchEngines" /t REG_SZ /d "[{\"allow_search_engine_discovery\":true},{\"is_default\":true,\"name\":\"Google\",\"keyword\":\"google.com\",\"search_url\":\"https://www.google.com/search?q={searchTerms}\",\"suggest_url\":\"{google:baseURL}complete/search?output=chrome&q={searchTerms}\",\"image_search_url\":\"content={imageThumbnail},url={imageURL},sbisrc={SearchSource}\"},{\"name\":\"Bing\",\"keyword\":\"bing.com\",\"search_url\":\"https://www.bing.com/search?q={searchTerms}\",\"suggest_url\":\"https://www.bing.com/qbox?query={searchTerms}\",\"image_search_url\":\"https://www.bing.com/images/detail/search?iss=sbiupload\"},{\"name\":\"DuckDuckGo\",\"keyword\":\"duckduckgo.com\",\"search_url\":\"https://duckduckgo.com/?q={searchTerms}\",\"suggest_url\":\"https://www.duckduckgo.com/qbox?query={searchTerms}\",\"image_search_url\":\"https://www.duckduckgo.com/images/detail/search?iss=sbiupload\"},{\"name\":\"Ecosia\",\"keyword\":\"ecosia.org\",\"search_url\":\"https://www.ecosia.org/search?q={searchTerms}\",\"suggest_url\":\"https://ac.ecosia.org/autocomplete?q=%%s&type=list\",\"image_search_url\":\"\"},{\"name\":\"Google Images\",\"keyword\":\"image\",\"search_url\":\"https://www.google.com/search?tbm=isch&q={searchTerms}\",\"suggest_url\":\"{google:baseURL}complete/search?output=chrome&q={searchTerms}\",\"image_search_url\":\"content={imageThumbnail},url={imageURL},sbisrc={SearchSource}\"}]" /f

reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HomepageLocation" /t REG_SZ /d "https://pucrs.br" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "RestoreOnStartup" /t REG_DWORD /d "4" /f

reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DontCheckDefaultBrowser" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v "URL" /t REG_SZ /d "https://pucrs.br" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v "StartPage" /t REG_SZ /d "homepage" /f

powercfg.exe -x -monitor-timeout-ac 0
powercfg.exe -x -monitor-timeout-dc 0
powercfg.exe -x -standby-timeout-ac 0
powercfg.exe -x -standby-timeout-dc 0

setx /m ORACLE_HOME "G:\Aplicacoes\ORACLE\OracleClient_12_1_32bits_BERLIN"
setx /m TNS_ADMIN "G:\app_prod\Oracle\Oracle92\network\ADMIN"
setx /m PATH "%PATH%;G:\Aplicacoes\ORACLE\OracleClient_12_1_32bits_BERLIN"

xcopy "caixa" "C:\Windows\SysWOW64" /y /s /c

regsvr32 %windir%\SysWOW64\capicom.dll /s
regsvr32 %windir%\SysWOW64\msxml5.dll /s
regsvr32 %windir%\SysWOW64\msxml5r.dll /s

xcopy "Remove AppPackage.txt" "C:\Users\%username%\Desktop" /y

mkdir "C:\Temp"