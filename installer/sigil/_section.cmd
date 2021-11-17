::Check for wad file. If it's not there, jump out
if not exist "%~3\SIGIL.wad" (
        echo SIGIL.WAD not found. Skipping... >&2
        EXIT /B %ERRORLEVEL%
)
if not exist "%~3\DOOM.wad" (
        echo DOOM.WAD not found. Sigil requires DOOM.WAD. Skipping... >&2
        EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
type "MAPINFO.sigil.prt" >> "%~2\MAPINFO.txt"

::Extract Files
::=======================
::call "%~1\display_section.cmd" SIGIL >&2
if not exist "%~3\sigil" mkdir "%~3\sigil"
cd "%~3\sigil"
if exist "%~3\SIGIL_SHREDS.wad" (
    call %4 "%~3\SIGIL.wad"
    call %4 "%~3\SIGIL_SHREDS.wad"
    echo Fetching data from SIGIL.wad and SIGIL_SHREDS.WAD... >&2
) else (
    call %4 "%~3\SIGIL.wad"
    echo Fetching data from SIGIL.wad... >&2
)
echo Copying data to %~2... >&2

::Copy over graphics files
::=============================
::misc graphics
copy ".\graphics\sigilend.png" "%~2\graphics\sigilend.png"
copy ".\graphics\sigilint.png" "%~2\graphics\sigilint.png"
copy ".\graphics\sky5.png" "%~2\graphics\sky5.png"
copy ".\graphics\sky5_zd.png" "%~2\graphics\sky5_zd.png"
copy ".\graphics\m_epi5.png" "%~2\graphics\m_epi5.png"

::Copy Over Maps
::=================
copy ".\maps\E5M1.WAD" "%~2\maps\E5M1.wad"
copy ".\maps\E5M2.WAD" "%~2\maps\E5M2.wad"
copy ".\maps\E5M3.WAD" "%~2\maps\E5M3.wad"
copy ".\maps\E5M4.WAD" "%~2\maps\E5M4.wad"
copy ".\maps\E5M5.WAD" "%~2\maps\E5M5.wad"
copy ".\maps\E5M6.WAD" "%~2\maps\E5M6.wad"
copy ".\maps\E5M7.WAD" "%~2\maps\E5M7.wad"
copy ".\maps\E5M8.WAD" "%~2\maps\E5M8.wad"
copy ".\maps\E5M9.WAD" "%~2\maps\E5M9.wad"

::Copy Over Music
::=======================
if not exist "%~3\SIGIL_SHREDS.wad" (
copy ".\music\d_e5m1.mid" "%~2\music\d_e5m1.mid"
copy ".\music\d_e5m2.mid" "%~2\music\d_e5m2.mid"
copy ".\music\d_e5m3.mid" "%~2\music\d_e5m3.mid"
copy ".\music\d_e5m4.mid" "%~2\music\d_e5m4.mid"
copy ".\music\d_e5m5.mid" "%~2\music\d_e5m5.mid"
copy ".\music\d_e5m6.mid" "%~2\music\d_e5m6.mid"
copy ".\music\d_e5m7.mid" "%~2\music\d_e5m7.mid"
copy ".\music\d_e5m8.mid" "%~2\music\d_e5m8.mid"
copy ".\music\d_e5m9.mid" "%~2\music\d_e5m9.mid"
copy ".\music\d_inter.mid" "%~2\music\sig_intr.mid"
) else (
copy ".\d_e5m1.lmp" "%~2\music\d_e5m1.mp3"
copy ".\d_e5m2.lmp" "%~2\music\d_e5m2.mp3"
copy ".\d_e5m3.lmp" "%~2\music\d_e5m3.mp3"
copy ".\d_e5m4.lmp" "%~2\music\d_e5m4.mp3"
copy ".\d_e5m5.lmp" "%~2\music\d_e5m5.mp3"
copy ".\d_e5m6.lmp" "%~2\music\d_e5m6.mp3"
copy ".\d_e5m7.lmp" "%~2\music\d_e5m7.mp3"
copy ".\d_e5m8.lmp" "%~2\music\d_e5m8.mp3"
copy ".\d_e5m9.lmp" "%~2\music\d_e5m9.mp3"
copy ".\d_inter.lmp" "%~2\music\sig_intr.mp3"
)

::Copy Over Misc
::=================
copy ".\language.txt" "%~2\language.txt"
