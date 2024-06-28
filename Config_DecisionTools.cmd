rem start /WAIT DTSUIT~1.EXE /s /v/qn /v"DTOPSHORTCUTS=0"
xcopy "Y:\Applications\Decision Tools\Palisade_Course.lic" "C:\Program Files (x86)\Palisade\System" /y /i /q
mkdir "C:\Users\Public\Desktop\Decision Tools"
mklink "C:\Users\Public\Desktop\Decision Tools\TopRank" "C:\Program Files (x86)\Palisade\TopRank8\TopRank.exe"
mklink "C:\Users\Public\Desktop\Decision Tools\StatTools" "C:\Program Files (x86)\Palisade\StatTools8\StatTools.exe"
mklink "C:\Users\Public\Desktop\Decision Tools\Precision Tree" "C:\Program Files (x86)\Palisade\PrecisionTree8\Ptree.exe"
mklink "C:\Users\Public\Desktop\Decision Tools\Neural Tools" "C:\Program Files (x86)\Palisade\NeuralTools8\NeuralTools.exe"
mklink "C:\Users\Public\Desktop\Decision Tools\Evolver" "C:\Program Files (x86)\Palisade\Evolver8\Evolver.exe"
mklink "C:\Users\Public\Desktop\Decision Tools\Risk" "C:\Program Files (x86)\Palisade\RISK8\Risk.exe"