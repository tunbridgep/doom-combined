::Check for wad file. If it's not there, jump out
if not exist "%~3\PLUTONIA.WAD" (
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\TNT.WAD" (
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
echo Both Final Doom wads present. Creating combined episodes... >&2
type "MAPINFO.finaldoom.prt" >> "%~2\MAPINFO.txt"
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_PLU.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_PLUEND.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TNT.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TNTEND.WAD" /isy
