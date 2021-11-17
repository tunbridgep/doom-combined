::Check for wad file. If it's not there, jump out
if not exist "%~3\thyinterpic.wad" (
    echo thyinterpic.wad not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)
if not exist "%~3\DOOM.WAD" (
    echo DOOM.WAD is required for thyinterpic. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
type "MAPINFO.doom1.e4tip.prt" >> "%~2\MAPINFO.txt"
copy "IN_E4.txt" "%~2\IN_E4.txt"

::Extract Files
::=======================
echo Fetching data from thyinterpic.wad... >&2
if not exist "%~3\thyinterpic" mkdir "%~3\thyinterpic"
cd "%~3\thyinterpic"
call %4 "%~3\thyinterpic.wad"
echo Copying data to %~2... >&2

::copy over graphics files
::=============================
::intermission screens
copy ".\graphics\wia30000.png" "%~2\graphics\WIA30000.png"
copy ".\graphics\wia30001.png" "%~2\graphics\WIA30001.png"
copy ".\graphics\wia30002.png" "%~2\graphics\WIA30002.png"
copy ".\graphics\wia30100.png" "%~2\graphics\WIA30100.png"
copy ".\graphics\wia30101.png" "%~2\graphics\WIA30101.png"
copy ".\graphics\wia30102.png" "%~2\graphics\WIA30102.png"
copy ".\graphics\wia30103.png" "%~2\graphics\WIA30103.png"
copy ".\graphics\wia30200.png" "%~2\graphics\WIA30200.png"
copy ".\graphics\wimap3.png" "%~2\graphics\WIMAP3.png"
