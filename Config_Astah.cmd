del /q /s "C:\Users\%username%\Desktop\Astah Professional.lnk"
mklink "C:\Users\Public\Desktop\Astah Professional" "C:\Program Files\astah-professional\astah-pro.exe"
xcopy "Y:\Applications\Astah Professional\astah_professional_license.xml" "C:\Program Files\astah-professional\" /y
tar -xf "Y:\Applications\Astah Professional\setup.zip" -C "C:\Users\Default"
tar -xf "Y:\Applications\Astah Professional\setup.zip" -C "C:\Users\%username%"