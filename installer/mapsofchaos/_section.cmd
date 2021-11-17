::Check for wad file. If it's not there, jump out
if not exist "%~3\mapsofchaos-ok.wad" (
    if not exist "%~3\mapsofchaos-hc.wad" (
        if not exist "%~3\mapsofchaos.wad" (
            echo Maps of Chaos not found. Skipping... >&2
            EXIT /B %ERRORLEVEL%
            )
    )
)
cd "%~5"

::Copy our installer files
if exist "%~3\DOOM.WAD" (
    type "MAPINFO.moc.doom1.prt" >> "%~2\MAPINFO.txt"
)
type "MAPINFO.moc.doom2.prt" >> "%~2\MAPINFO.txt"
copy "IN_C1.txt" "%~2\IN_C1.txt"
copy "IN_C2.txt" "%~2\IN_C2.txt"
copy "IN_C3.txt" "%~2\IN_C3.txt"
copy "IN_C4.txt" "%~2\IN_C4.txt"

::Extract Files
::=======================
::call "%~1\display_section.cmd" Doom 1 >&2
if not exist "%~3\moc" mkdir "%~3\moc"
cd "%~3\moc"
if exist "%~3\mapsofchaos-ok.wad" (
    call %4 "%~3\mapsofchaos-ok.wad"
    echo Fetching data from mapsofchaos-ok.wad... >&2
) else if exist "%~3\mapsofchaos-hc.wad" (
    call %4 "%~3\mapsofchaos-hc.wad"
    echo Fetching data from mapsofchaos-hc.wad... >&2
) else (
    call %4 "%~3\mapsofchaos.wad"
    echo Fetching data from mapsofchaos.wad... >&2
)
echo Copying data to %~2... >&2

::Copy Over Maps
::=================
copy ".\maps\E1M1.WAD" "%~2\maps\C1M1.wad"
copy ".\maps\E1M2.WAD" "%~2\maps\C1M2.wad"
copy ".\maps\E1M3.WAD" "%~2\maps\C1M3.wad"
copy ".\maps\E1M4.WAD" "%~2\maps\C1M4.wad"
copy ".\maps\E1M5.WAD" "%~2\maps\C1M5.wad"
copy ".\maps\E1M6.WAD" "%~2\maps\C1M6.wad"
copy ".\maps\E1M7.WAD" "%~2\maps\C1M7.wad"
copy ".\maps\E1M8.WAD" "%~2\maps\C1M8.wad"
copy ".\maps\E1M9.WAD" "%~2\maps\C1M9.wad"

copy ".\maps\E2M1.WAD" "%~2\maps\C2M1.wad"
copy ".\maps\E2M2.WAD" "%~2\maps\C2M2.wad"
copy ".\maps\E2M3.WAD" "%~2\maps\C2M3.wad"
copy ".\maps\E2M4.WAD" "%~2\maps\C2M4.wad"
copy ".\maps\E2M5.WAD" "%~2\maps\C2M5.wad"
copy ".\maps\E2M6.WAD" "%~2\maps\C2M6.wad"
copy ".\maps\E2M7.WAD" "%~2\maps\C2M7.wad"
copy ".\maps\E2M8.WAD" "%~2\maps\C2M8.wad"
copy ".\maps\E2M9.WAD" "%~2\maps\C2M9.wad"

copy ".\maps\E3M1.WAD" "%~2\maps\C3M1.wad"
copy ".\maps\E3M2.WAD" "%~2\maps\C3M2.wad"
copy ".\maps\E3M3.WAD" "%~2\maps\C3M3.wad"
copy ".\maps\E3M4.WAD" "%~2\maps\C3M4.wad"
copy ".\maps\E3M5.WAD" "%~2\maps\C3M5.wad"
copy ".\maps\E3M6.WAD" "%~2\maps\C3M6.wad"
copy ".\maps\E3M7.WAD" "%~2\maps\C3M7.wad"
copy ".\maps\E3M8.WAD" "%~2\maps\C3M8.wad"
copy ".\maps\E3M9.WAD" "%~2\maps\C3M9.wad"

copy ".\maps\MAP01.WAD" "%~2\maps\MOC01.wad"
copy ".\maps\MAP02.WAD" "%~2\maps\MOC02.wad"
copy ".\maps\MAP03.WAD" "%~2\maps\MOC03.wad"
copy ".\maps\MAP04.WAD" "%~2\maps\MOC04.wad"
copy ".\maps\MAP05.WAD" "%~2\maps\MOC05.wad"
copy ".\maps\MAP06.WAD" "%~2\maps\MOC06.wad"
copy ".\maps\MAP07.WAD" "%~2\maps\MOC07.wad"
copy ".\maps\MAP08.WAD" "%~2\maps\MOC08.wad"
copy ".\maps\MAP09.WAD" "%~2\maps\MOC09.wad"
copy ".\maps\MAP10.WAD" "%~2\maps\MOC10.wad"
copy ".\maps\MAP11.WAD" "%~2\maps\MOC11.wad"
copy ".\maps\MAP12.WAD" "%~2\maps\MOC12.wad"
copy ".\maps\MAP13.WAD" "%~2\maps\MOC13.wad"
copy ".\maps\MAP14.WAD" "%~2\maps\MOC14.wad"
copy ".\maps\MAP15.WAD" "%~2\maps\MOC15.wad"
copy ".\maps\MAP16.WAD" "%~2\maps\MOC16.wad"
copy ".\maps\MAP17.WAD" "%~2\maps\MOC17.wad"
copy ".\maps\MAP18.WAD" "%~2\maps\MOC18.wad"
copy ".\maps\MAP19.WAD" "%~2\maps\MOC19.wad"
copy ".\maps\MAP20.WAD" "%~2\maps\MOC20.wad"
copy ".\maps\MAP21.WAD" "%~2\maps\MOC21.wad"
copy ".\maps\MAP22.WAD" "%~2\maps\MOC22.wad"
copy ".\maps\MAP23.WAD" "%~2\maps\MOC23.wad"
copy ".\maps\MAP24.WAD" "%~2\maps\MOC24.wad"
copy ".\maps\MAP25.WAD" "%~2\maps\MOC25.wad"
copy ".\maps\MAP26.WAD" "%~2\maps\MOC26.wad"
copy ".\maps\MAP27.WAD" "%~2\maps\MOC27.wad"
copy ".\maps\MAP28.WAD" "%~2\maps\MOC28.wad"
copy ".\maps\MAP29.WAD" "%~2\maps\MOC29.wad"
copy ".\maps\MAP30.WAD" "%~2\maps\MOC30.wad"
copy ".\maps\MAP31.WAD" "%~2\maps\MOC31.wad"
copy ".\maps\MAP32.WAD" "%~2\maps\MOC32.wad"
