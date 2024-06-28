mkdir "C:\Users\%username%\AppData\Roaming\IPU\CoolPack"
mkdir "C:\Users\Default\AppData\Roaming\IPU\CoolPack"
xcopy "Y:\Applications\Coolpack\CoolPack.ini" "C:\Users\%username%\AppData\Roaming\IPU\CoolPack" /y /q
xcopy "Y:\Applications\Coolpack\CoolPack.ini" "C:\Users\Default\AppData\Roaming\IPU\CoolPack" /y /q
mklink "C:\Users\Public\Desktop\Coolpack" "C:\Program Files\CoolPack\CoolPack.exe"