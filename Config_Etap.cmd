mkdir "C:\Users\%username%\AppData\Local\OTI"
mkdir "C:\Users\Default\AppData\Local\OTI"
xcopy "Y:\Applications\etap\OTI" "C:\Users\%username%\AppData\Local\OTI" /y /s /c /q
xcopy "Y:\Applications\etap\OTI" "C:\Users\Default\AppData\Local\OTI" /y /s /c /q