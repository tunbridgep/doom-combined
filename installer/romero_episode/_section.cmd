::Check for wad file. If it's not there, jump out
if not exist "%~3\e1m4b.WAD" (
    if not exist "%~3\e1m8b.WAD" (
        if not exist "%~3\DOOM.WAD" (
            echo Not using DOOM1 or both ROMERO maps. Not creating joint episode... >&2
            EXIT /B %ERRORLEVEL%
        )
    )
)

cd "%~5"

::Copy our installer files
type "MAPINFO.doom1_episode.prt" >> "%~2\MAPINFO.txt"
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_ROMERO.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_ROMERO1.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_ROMERO2.WAD" /isy
echo F | xcopy "%~1\BLACKMAP.WAD" "%~2\maps\FAKE_ROMERO3.WAD" /isy
echo Copying data to %~2... >&2
