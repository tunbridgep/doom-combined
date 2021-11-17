::Check for wad file. If it's not there, jump out
if not exist "%~3\PLUTONIA.WAD" (
    echo PLUTONIA.WAD not found. Skipping... >&2
    type "%~5\TEXTURES.plutonia.dummy" >> "%~2\TEXTURES.txt"
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
type "ANIMDEFS.plutonia.prt" >> "%~2\ANIMDEFS.txt"
type "TEXTURES.plutonia.prt" >> "%~2\TEXTURES.txt"
type "MAPINFO.plutonia.prt" >> "%~2\MAPINFO.txt"

::Extract Files
::=======================
::call "%~1\display_section.cmd" Doom 1 >&2
echo Fetching data from PLUTONIA.WAD... >&2
if not exist "%~3\plutonia" mkdir "%~3\plutonia"
cd "%~3\plutonia"
call %4 "%~3\PLUTONIA.WAD"
echo Copying data to %~2... >&2

::copy over necessary graphics
::=============================
::misc graphics
copy ".\graphics\interpic.png" "%~2\graphics\pnterpic.png"
copy ".\graphics\bossback.png" "%~2\graphics\possback.png"

::Copy Over Patches
::=======================
copy ".\patches\sky1.png" "%~2\patches\plusky1.png"
copy ".\patches\sky2a.png" "%~2\patches\plusky2a.png"
copy ".\patches\sky2b.png" "%~2\patches\plusky2b.png"
copy ".\patches\sky2c.png" "%~2\patches\plusky2c.png"
copy ".\patches\sky2d.png" "%~2\patches\plusky2d.png"
copy ".\patches\sky3a.png" "%~2\patches\plusky3a.png"
copy ".\patches\sky3b.png" "%~2\patches\plusky3b.png"
copy ".\patches\darkrock.png" "%~2\patches\darkrock.png"
copy ".\patches\natrock.png" "%~2\patches\natrock.png"
copy ".\patches\redrock.png" "%~2\patches\redrock.png"
copy ".\patches\vines1.png" "%~2\patches\vines1.png"
copy ".\patches\yellow.png" "%~2\patches\yellow.png"
copy ".\patches\fireblu1.png" "%~2\patches\plfrblu1.png"
copy ".\patches\fireblu2.png" "%~2\patches\plfrblu2.png"
copy ".\patches\arock2.png" "%~2\patches\arock2.png"
copy ".\patches\arock3.png" "%~2\patches\arock3.png"
copy ".\patches\arock4.png" "%~2\patches\arock4.png"
copy ".\patches\arock5.png" "%~2\patches\arock5.png"
copy ".\patches\grate.png" "%~2\patches\grate.png"
copy ".\patches\mould.png" "%~2\patches\mould.png"
copy ".\patches\brbrick.png" "%~2\patches\brbrick.png"
copy ".\patches\brbrick2.png" "%~2\patches\brbrick2.png"
copy ".\patches\poison.png" "%~2\patches\poison.png"
copy ".\patches\concrete.png" "%~2\patches\concrete.png"
copy ".\patches\camo1.png" "%~2\patches\camo1.png"
copy ".\patches\camo4.png" "%~2\patches\camo4.png"
copy ".\patches\camo5.png" "%~2\patches\camo5.png"
copy ".\patches\mud.png" "%~2\patches\mud.png"
copy ".\patches\dirbri1.png" "%~2\patches\dirbri1.png"
copy ".\patches\dirbri2.png" "%~2\patches\dirbri2.png"
copy ".\patches\tile.png" "%~2\patches\tile.png"
copy ".\patches\railing.png" "%~2\patches\railing.png"
copy ".\patches\brock2.png" "%~2\patches\brock2.png"
copy ".\patches\sw1skull.png" "%~2\patches\sw1skull.png"
copy ".\patches\sw2skull.png" "%~2\patches\sw2skull.png"
copy ".\patches\mossrock.png" "%~2\patches\mossrock.png"
copy ".\patches\mossbrik.png" "%~2\patches\mossbrik.png"
copy ".\patches\brick.png" "%~2\patches\brick.png"
copy ".\patches\mosrok2.png" "%~2\patches\mosrok2.png"
copy ".\patches\mywood.png" "%~2\patches\mywood.png"
copy ".\patches\mc1.png" "%~2\patches\mc1.png"
copy ".\patches\mc2.png" "%~2\patches\mc2.png"
copy ".\patches\mc3.png" "%~2\patches\mc3.png"
copy ".\patches\mc4.png" "%~2\patches\mc4.png"
copy ".\patches\mc5.png" "%~2\patches\mc5.png"
copy ".\patches\mc6.png" "%~2\patches\mc6.png"
copy ".\patches\mc7.png" "%~2\patches\mc7.png"
copy ".\patches\mc8.png" "%~2\patches\mc8.png"
copy ".\patches\mc10.png" "%~2\patches\mc10.png"
copy ".\patches\mc11.png" "%~2\patches\mc11.png"
copy ".\patches\mc12.png" "%~2\patches\mc12.png"
copy ".\patches\mc13.png" "%~2\patches\mc13.png"
copy ".\patches\mc14.png" "%~2\patches\mc14.png"
copy ".\patches\mc15.png" "%~2\patches\mc15.png"
copy ".\patches\mc16.png" "%~2\patches\mc16.png"
copy ".\patches\mc17.png" "%~2\patches\mc17.png"
copy ".\patches\mc18.png" "%~2\patches\mc18.png"
copy ".\patches\mc19.png" "%~2\patches\mc19.png"
copy ".\patches\mc20.png" "%~2\patches\mc20.png"
copy ".\patches\hell6_1.png" "%~2\patches\hell6_1.png"
copy ".\patches\hell8_3.png" "%~2\patches\hell8_3.png"
copy ".\patches\marble1.png" "%~2\patches\marble1.png"
copy ".\patches\brown1.png" "%~2\patches\brown1.png"
copy ".\patches\brown2.png" "%~2\patches\brown2.png"
copy ".\patches\brown3.png" "%~2\patches\brown3.png"
copy ".\patches\brown5.png" "%~2\patches\brown5.png"
copy ".\patches\wood.png" "%~2\patches\wood.png"
copy ".\patches\brick1.png" "%~2\patches\brick1.png"
copy ".\patches\brick2.png" "%~2\patches\brick2.png"
copy ".\patches\rock.png" "%~2\patches\rock.png"
copy ".\patches\wfall1.png" "%~2\patches\wfall1.png"
copy ".\patches\wfall2.png" "%~2\patches\wfall2.png"
copy ".\patches\wfall3.png" "%~2\patches\wfall3.png"
copy ".\patches\wfall4.png" "%~2\patches\wfall4.png"

::Copy Over Maps
::=================
copy ".\maps\MAP01.WAD" "%~2\maps\PLU01.wad"
copy ".\maps\MAP02.WAD" "%~2\maps\PLU02.wad"
copy ".\maps\MAP03.WAD" "%~2\maps\PLU03.wad"
copy ".\maps\MAP04.WAD" "%~2\maps\PLU04.wad"
copy ".\maps\MAP05.WAD" "%~2\maps\PLU05.wad"
copy ".\maps\MAP06.WAD" "%~2\maps\PLU06.wad"
copy ".\maps\MAP07.WAD" "%~2\maps\PLU07.wad"
copy ".\maps\MAP08.WAD" "%~2\maps\PLU08.wad"
copy ".\maps\MAP09.WAD" "%~2\maps\PLU09.wad"
copy ".\maps\MAP10.WAD" "%~2\maps\PLU10.wad"
copy ".\maps\MAP11.WAD" "%~2\maps\PLU11.wad"
copy ".\maps\MAP12.WAD" "%~2\maps\PLU12.wad"
copy ".\maps\MAP13.WAD" "%~2\maps\PLU13.wad"
copy ".\maps\MAP14.WAD" "%~2\maps\PLU14.wad"
copy ".\maps\MAP15.WAD" "%~2\maps\PLU15.wad"
copy ".\maps\MAP16.WAD" "%~2\maps\PLU16.wad"
copy ".\maps\MAP17.WAD" "%~2\maps\PLU17.wad"
copy ".\maps\MAP18.WAD" "%~2\maps\PLU18.wad"
copy ".\maps\MAP19.WAD" "%~2\maps\PLU19.wad"
copy ".\maps\MAP20.WAD" "%~2\maps\PLU20.wad"
copy ".\maps\MAP21.WAD" "%~2\maps\PLU21.wad"
copy ".\maps\MAP22.WAD" "%~2\maps\PLU22.wad"
copy ".\maps\MAP23.WAD" "%~2\maps\PLU23.wad"
copy ".\maps\MAP24.WAD" "%~2\maps\PLU24.wad"
copy ".\maps\MAP25.WAD" "%~2\maps\PLU25.wad"
copy ".\maps\MAP26.WAD" "%~2\maps\PLU26.wad"
copy ".\maps\MAP27.WAD" "%~2\maps\PLU27.wad"
copy ".\maps\MAP28.WAD" "%~2\maps\PLU28.wad"
copy ".\maps\MAP29.WAD" "%~2\maps\PLU29.wad"
copy ".\maps\MAP30.WAD" "%~2\maps\PLU30.wad"
copy ".\maps\MAP31.WAD" "%~2\maps\PLU31.wad"
copy ".\maps\MAP32.WAD" "%~2\maps\PLU32.wad"
