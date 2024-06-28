cacls "C:\Program Files (x86)\mv" /e /p todos:f
cacls "C:\Program Files\MV" /e /p todos:f
mkdir "C:\Program Files\MV\SoulMV\resources\app"
xcopy "Y:\Applications\SoulMV\main.js" "C:\Program Files\MV\SoulMV\resources\app" /y
xcopy "Y:\Applications\SoulMV\LICENSES.chromium.html" "C:\Program Files\MV\SoulMV" /y
xcopy "Y:\Applications\SoulMV\SoulMV.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /y
mklink "C:\Users\Public\Desktop\SoulMV" "C:\Program Files\MV\SoulMV\SoulMV.exe"