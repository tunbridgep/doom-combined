::Check for wad file. If it's not there, jump out
if not exist "%~3\DOOM.WAD" (
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
echo Doom 1 Retail present. Creating combined episodes... >&2
type "MAPINFO.tud.prt" >> "%~2\MAPINFO.txt"
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TUD.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TUD1.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TUD2.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TUD3.WAD" /isy
