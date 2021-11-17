::Check for wad file. If it's not there, jump out
if not exist "%~3\freedoom1.wad" (
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
echo Freedoom present. Creating combined episode... >&2
type "MAPINFO.freedoom.prt" >> "%~2\MAPINFO.txt"
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_FD.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_FD1.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_FD2.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_FD3.WAD" /isy
