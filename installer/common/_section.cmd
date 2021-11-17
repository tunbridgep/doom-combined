::Copy our installer files
cd "%~5"

echo Fetching common data... >&2

xcopy "acs\*.o" "%~2\acs" /isy > nul
xcopy "flats\*" "%~2\flats" /isy > nul
xcopy "graphics\*" "%~2\graphics" /isy > nul
xcopy "patches\*" "%~2\patches" /isy > nul
type "ANIMDEFS.common.prt" >> "%~2\ANIMDEFS.txt"
type "TEXTURES.common.prt" >> "%~2\TEXTURES.txt"
type "MAPINFO.common.prt" >> "%~2\MAPINFO.txt"
::type "MENUDEF.common.prt" >> "%~2\MENUDEF.txt"
type "CVARINFO.txt" >> "%~2\CVARINFO.txt"
type "LOADACS.txt" >> "%~2\LOADACS.txt"
type "SNDINFO.txt" >> "%~2\SNDINFO.txt"
if exist "%~3\DOOM.WAD" (
    type "MAPINFO.common.doom1.prt" >> "%~2\MAPINFO.txt"
)
