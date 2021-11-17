::Check for wad file. If it's not there, jump out
if not exist "%~3\mapsofchaos-ok.wad" (
    if not exist "%~3\mapsofchaos-hc.wad" (
        if not exist "%~3\mapsofchaos.wad" (
            EXIT /B %ERRORLEVEL%
            )
    )
)

cd "%~5"

::Copy our installer files
echo Maps of Chaos present. Creating combined episodes... >&2
type "MAPINFO.moctud.prt" >> "%~2\MAPINFO.txt"
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TOC.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TOC1.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_TOC2.WAD" /isy
