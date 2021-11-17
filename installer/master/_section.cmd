::Check for wad file. If it's not there, jump out
if not exist "%~3\ATTACK.WAD" (
    echo ATTACK.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\BLACKTWR.WAD" (
    echo BLACKTWR.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\BLOODSEA.WAD" (
    echo BLOODSEA.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\CANYON.WAD" (
    echo CANYON.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\CATWALK.WAD" (
    echo CATWALK.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\COMBINE.WAD" (
    echo COMBINE.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\FISTULA.WAD" (
    echo FISTULA.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\GARRISON.WAD" (
    echo GARRISON.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\GERYON.WAD" (
    echo GERYON.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\MANOR.WAD" (
    echo MANOR.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\MEPHISTO.WAD" (
    echo MEPHISTO.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\MINOS.WAD" (
    echo MINOS.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\NESSUS.WAD" (
    echo NESSUS.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\PARADOX.WAD" (
    echo PARADOX.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\SUBSPACE.WAD" (
    echo SUBSPACE.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\TEETH.WAD" (
    echo TEETH.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\TTRAP.WAD" (
    echo TTRAP.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\VESPERAS.WAD" (
    echo VESPERAS.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\VIRGIL.WAD" (
    echo VIRGIL.WAD not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
type "MAPINFO.master.prt" >> "%~2\MAPINFO.txt"
type "TEXTURES.master.prt" >> "%~2\TEXTURES.txt"

::copy over intermission screen
copy "graphics\interpic.png" "%~2\graphics\MLTERPIC.png"
copy "graphics\ml_sky.png" "%~2\graphics\ml_sky.png"
::Extract Files
::=======================
::call "%~1\display_section.cmd" Doom 1 >&2
if not exist "%~3\master" mkdir "%~3\master"
cd "%~3\master"

echo Fetching data from master levels wads... >&2
echo Copying data to %~2... >&2

::Copy Over Maps
::=================
call %4 "%~3\ATTACK.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML01.wad"
call %4 "%~3\BLACKTWR.WAD"
copy ".\maps\MAP25.WAD" "%~2\maps\ML02.wad"
call %4 "%~3\BLOODSEA.WAD"
copy ".\maps\MAP07.WAD" "%~2\maps\ML03.wad"
call %4 "%~3\CANYON.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML04.wad"
call %4 "%~3\CATWALK.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML05.wad"
call %4 "%~3\COMBINE.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML06.wad"
call %4 "%~3\FISTULA.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML07.wad"
call %4 "%~3\GARRISON.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML08.wad"
call %4 "%~3\GERYON.WAD"
copy ".\maps\MAP08.WAD" "%~2\maps\ML09.wad"
call %4 "%~3\MANOR.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML10.wad"
call %4 "%~3\MEPHISTO.WAD"
copy ".\maps\MAP07.WAD" "%~2\maps\ML11.wad"
call %4 "%~3\MINOS.WAD"
copy ".\maps\MAP05.WAD" "%~2\maps\ML12.wad"
call %4 "%~3\NESSUS.WAD"
copy ".\maps\MAP07.WAD" "%~2\maps\ML13.wad"
call %4 "%~3\PARADOX.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML14.wad"
call %4 "%~3\SUBSPACE.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML15.wad"
call %4 "%~3\SUBTERRA.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML16.wad"
call %4 "%~3\TEETH.WAD"
copy ".\maps\MAP31.WAD" "%~2\maps\ML17.wad"
copy ".\maps\MAP32.WAD" "%~2\maps\ML18.wad"
call %4 "%~3\TTRAP.WAD"
copy ".\maps\MAP01.WAD" "%~2\maps\ML19.wad"
call %4 "%~3\VESPERAS.WAD"
copy ".\maps\MAP09.WAD" "%~2\maps\ML20.wad"
call %4 "%~3\VIRGIL.WAD"
copy ".\maps\MAP03.WAD" "%~2\maps\ML21.wad"
