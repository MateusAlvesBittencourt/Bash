powershell -command "Expand-Archive -Path 'Y:\Applications\Autodesk FAU\setup.zip' -DestinationPath 'C:\Temp'"
"C:\Temp\image\Installer.exe" -i deploy --offline_mode -q -o "C:\Temp\image\Collection.xml" --installer_version "2.5.0.219"
powershell -command "Remove-Item -Path 'C:\Temp\image' -Recurse -Force"
mkdir "C:\Users\Public\Desktop\Autodesk"
mklink "C:\Users\Public\Dsktop\Autodesk\AutoCAD 2024 - English" "C:\Arquivos de Programas\Autodesk\AutoCAD 2024\acad.exe"
move "C:\Users\Public\Desktop\3ds Max 2024.lnk" "C:\Users\Public\Desktop\Autodesk"
move "C:\Users\Public\Desktop\Autodesk Inventor Professional 2024.lnk" "C:\Users\Public\Desktop\Autodesk"
move "C:\Users\Public\Desktop\Revit 2024.lnk" "C:\Users\Public\Desktop\Autodesk"
move "C:\Users\Public\Desktop\Navisworks Manage 2024 (BIM 360).lnk" "C:\Users\Public\Desktop\Autodesk"
move "C:\Users\Public\Desktop\Navisworks Manage 2024.lnk" "C:\Users\Public\Desktop\Autodesk"