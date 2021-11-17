cd "%~5"

::Copy our installer files
mkdir "%~2\acs"
xcopy "acs\*.o" "%~2\acs" /isy > nul
type "CVARINFO.gzdoom.prt" >> "%~2\CVARINFO.txt"
type "MENUDEF.gzdoom.prt" >> "%~2\MENUDEF.txt"
type "LOADACS.gzdoom.prt" >> "%~2\LOADACS.txt"
type "DECORATE.txt" >> "%~2\DECORATE.txt"

echo Copying GZDoom Data to %~2... >&2
