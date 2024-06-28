xcopy "Y:\Applications\Sketchup\SketchUp.lic" "C:\Program Files\SketchUp\SketchUp 2024" /y /s /c /i /q
mkdir "C:\users\Public\desktop\SketchUp"
move "c:\users\Public\desktop\SketchUp 2024.lnk" "C:\users\Public\desktop\SketchUp"
move "c:\users\Public\desktop\Style Builder.lnk" "C:\users\Public\desktop\SketchUp"
move "c:\users\Public\desktop\LayOut 2024.lnk" "C:\users\Public\desktop\SketchUp"
powershell -command "Expand-Archive -Path 'Y:\Applications\Sketchup\setup.zip' -DestinationPath 'C:\Users\Default\AppData\Roaming'"