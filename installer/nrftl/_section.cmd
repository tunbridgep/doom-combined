::Check for wad files. If they aren't there, jump out
if not exist "%~3\NRFTL+.WAD" (
    if not exist "%~3\NERVE.WAD" (
        echo NERVE.WAD and NRFTL+.WAD not found. Skipping... >&2
        EXIT /B %ERRORLEVEL%
    )
)

cd "%~5"

::Copy our installer files
type "MAPINFO.nrftl.prt" >> "%~2\MAPINFO.txt"

::copy over intermission screen
copy ".\graphics\MNTERPIC.png" "%~2\graphics\MNTERPIC.png"

::Extract Files
::=======================
::call "%~1\display_section.cmd" Doom 1 >&2
if not exist "%~3\nrftl" mkdir "%~3\nrftl"
cd "%~3\nrftl"

if not exist "%~3\NRFTL+.WAD" (
    echo Fetching data from NERVE.WAD... >&2
    call %4 "%~3\NERVE.WAD"
) else (
    echo Fetching data from NRFTL+.WAD... >&2
    call %4 "%~3\NRFTL+.WAD"
)
echo Copying data to %~2... >&2

::Copy Over Maps
::=================
copy ".\maps\MAP01.WAD" "%~2\maps\NRV01.wad"
copy ".\maps\MAP02.WAD" "%~2\maps\NRV02.wad"
copy ".\maps\MAP03.WAD" "%~2\maps\NRV03.wad"
copy ".\maps\MAP04.WAD" "%~2\maps\NRV04.wad"
copy ".\maps\MAP05.WAD" "%~2\maps\NRV05.wad"
copy ".\maps\MAP06.WAD" "%~2\maps\NRV06.wad"
copy ".\maps\MAP07.WAD" "%~2\maps\NRV07.wad"
copy ".\maps\MAP08.WAD" "%~2\maps\NRV08.wad"
copy ".\maps\MAP09.WAD" "%~2\maps\NRV09.wad"
