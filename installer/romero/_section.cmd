::Check for wad file. If it's not there, jump out
if not exist "%~3\e1m4b.WAD" (
    if not exist "%~3\e1m8b.WAD" (
        echo no extra maps found. Skipping... >&2
        EXIT /B %ERRORLEVEL%
    )
)

cd "%~5"

::Copy our installer files
type "MAPINFO.e1m8b.prt" >> "%~2\MAPINFO.txt"

::Extract Files
::=======================
::call "%~1\display_section.cmd" Doom 1 >&2
if not exist "%~3\romero" mkdir "%~3\romero"
cd "%~3\romero"

::Copy Over Maps
::=================
if exist "%~3\e1m8b.wad" (
    if exist "%~3\e1m4b.wad" (
        ::both exist
        echo Fetching data from e1m8b.wad and e1m4b.wad... >&2
        call %4 "%~3\e1m4b.WAD"
        call %4 "%~3\e1m8b.WAD"
        type "%~5\MAPINFO.both.prt" >> "%~2\MAPINFO.txt"
        copy ".\maps\E1M4.WAD" "%~2\maps\Z1M1.wad"
        copy ".\maps\E1M8.WAD" "%~2\maps\Z1M2.wad"
    ) else (
        ::only e1m8 exists
        echo Fetching data from e1m8b.wad... >&2
        call %4 "%~3\e1m8b.WAD"
        type "%~5\MAPINFO.e1m8b.prt" >> "%~2\MAPINFO.txt"
        copy ".\maps\E1M8.WAD" "%~2\maps\Z1M1.wad"
    )
) else (
    if exist "%~3\e1m4b.wad" (
        ::only e1m4 exists
        echo Fetching data from e1m4b.wad... >&2
        call %4 "%~3\e1m4b.WAD"
        type "%~5\MAPINFO.e1m4b.prt" >> "%~2\MAPINFO.txt"
        copy ".\maps\E1M4.WAD" "%~2\maps\Z1M1.wad"
    )
)
echo Copying data to %~2... >&2
