powershell -command "Expand-Archive -Path 'Y:\Applications\Autodesk P7\setup.zip' -DestinationPath 'C:\Temp'"
"C:\Temp\image\Installer.exe" -i deploy --offline_mode -q -o "C:\Temp\image\Collection.xml" --installer_version "2.5.0.219"
powershell -command "Remove-Item -Path 'C:\Temp\image' -Recurse -Force"
mkdir "C:\Users\Public\Desktop\Autodesk"
mklink "C:\Users\Public\Desktop\Autodesk\AutoCAD - English" "C:\Arquivos de Programas\Autodesk\AutoCAD 2025\acad.exe"
move "C:\Users\Public\Desktop\3ds Max 2025.lnk" "C:\Users\Public\Desktop\Autodesk"
move "C:\Users\Public\Desktop\Autodesk Inventor Professional 2025.lnk" "C:\Users\Public\Desktop\Autodesk"