::Check for wad file. If it's not there, jump out
if not exist "%~3\freedoom2.wad" (
    echo freedoom2.wad not found. Skipping... >&2
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
type "TEXTURES.freedoom2.prt" >> "%~2\TEXTURES.txt"
type "MAPINFO.freedoom2.prt" >> "%~2\MAPINFO.txt"

::Extract Files
::=======================
::call "%~1\display_section.cmd" Doom 1 >&2
echo Fetching data from freedoom2.wad... >&2
if not exist "%~3\freedoom2" mkdir "%~3\freedoom2"
cd "%~3\freedoom2"
call %4 "%~3\freedoom2.wad"
echo Copying data to %~2... >&2

::Copy Over Graphics
::=================
copy ".\graphics\interpic.png" "%~2\graphics\FNTERPIC.png"

::Copy Over Patches
::=======================

::doom 1 textures
copy ".\patches\w104_1.png" "%~2\patches\W104_1.png"
copy ".\patches\tp5_1.png" "%~2\patches\TP5_1.png"
copy ".\patches\tp5_2.png" "%~2\patches\TP5_2.png"
copy ".\patches\tp5_3.png" "%~2\patches\TP5_3.png"
copy ".\patches\tp5_4.png" "%~2\patches\TP5_4.png"
copy ".\patches\w113_1.png" "%~2\patches\W113_1.png"
copy ".\patches\w113_2.png" "%~2\patches\W113_2.png"
copy ".\patches\w113_3.png" "%~2\patches\W113_3.png"
copy ".\patches\comp02_1.png" "%~2\patches\COMP02_1.png"
copy ".\patches\comp02_2.png" "%~2\patches\COMP02_2.png"
copy ".\patches\comp02_3.png" "%~2\patches\COMP02_3.png"
copy ".\patches\comp02_4.png" "%~2\patches\COMP02_4.png"
copy ".\patches\comp02_5.png" "%~2\patches\COMP02_5.png"
copy ".\patches\comp02_6.png" "%~2\patches\COMP02_6.png"
copy ".\patches\comp02_7.png" "%~2\patches\COMP02_7.png"
copy ".\patches\comp02_8.png" "%~2\patches\COMP02_8.png"
copy ".\patches\wall21_1.png" "%~2\patches\WALL21_1.png"
copy ".\patches\wall21_3.png" "%~2\patches\WALL21_3.png"
copy ".\patches\wall21_5.png" "%~2\patches\WALL21_5.png"
copy ".\patches\comp03_6.png" "%~2\patches\COMP03_6.png"
copy ".\patches\comp03_7.png" "%~2\patches\COMP03_7.png"
copy ".\patches\comp01_5.png" "%~2\patches\COMP01_5.png"
copy ".\patches\comp01_6.png" "%~2\patches\COMP01_6.png"
copy ".\patches\comp01_1.png" "%~2\patches\COMP01_1.png"
copy ".\patches\comp1c_6.png" "%~2\patches\COMP1C_6.png"
copy ".\patches\comp1b_4.png" "%~2\patches\COMP1B_4.png"
copy ".\patches\sw11_5.png" "%~2\patches\SW11_5.png"
copy ".\patches\door2_3.png" "%~2\patches\DOOR2_3.png"
copy ".\patches\ps15a0.png" "%~2\patches\PS15A0.png"
copy ".\patches\wall03_3.png" "%~2\patches\WALL03_3.png"
copy ".\patches\wall24_1.png" "%~2\patches\WALL24_1.png"
copy ".\patches\wall51_1.png" "%~2\patches\WALL51_1.png"
copy ".\patches\wall57_1.png" "%~2\patches\WALL57_1.png"
copy ".\patches\wall57_2.png" "%~2\patches\WALL57_2.png"
copy ".\patches\wall57_3.png" "%~2\patches\WALL57_3.png"
copy ".\patches\wall57_4.png" "%~2\patches\WALL57_4.png"
copy ".\patches\wall63_2.png" "%~2\patches\WALL63_2.png"
copy ".\patches\wall70_2.png" "%~2\patches\WALL70_2.png"
copy ".\patches\wall70_3.png" "%~2\patches\WALL70_3.png"
copy ".\patches\wall76_1.png" "%~2\patches\WALL76_1.png"
copy ".\patches\wall79_1.png" "%~2\patches\WALL79_1.png"
copy ".\patches\flamp.png" "%~2\patches\FLAMP.png"
copy ".\patches\w13_a.png" "%~2\patches\W13_A.png"
copy ".\patches\w13_8.png" "%~2\patches\W13_8.png"
copy ".\patches\w15_4.png" "%~2\patches\W15_4.png"
copy ".\patches\w15_5.png" "%~2\patches\W15_5.png"
copy ".\patches\w15_6.png" "%~2\patches\W15_6.png"
copy ".\patches\tscrn2.png" "%~2\patches\TSCRN2.png"
copy ".\patches\tscrn3.png" "%~2\patches\TSCRN3.png"
copy ".\patches\tscrn4.png" "%~2\patches\TSCRN4.png"
copy ".\patches\tscrn5.png" "%~2\patches\TSCRN5.png"
copy ".\patches\tscrn6.png" "%~2\patches\TSCRN6.png"
copy ".\patches\tscrn8.png" "%~2\patches\TSCRN8.png"
copy ".\patches\hell6_1.png" "%~2\patches\HELL6_1.png"
copy ".\patches\hell8_3.png" "%~2\patches\HELL8_3.png"
copy ".\patches\w108_1.png" "%~2\patches\W108_1.png"
copy ".\patches\w109_1.png" "%~2\patches\W109_1.png"
copy ".\patches\w109_2.png" "%~2\patches\W109_2.png"
copy ".\patches\w110_1.png" "%~2\patches\W110_1.png"
copy ".\patches\sw2_3.png" "%~2\patches\SW2_3.png"
copy ".\patches\sky1.png" "%~2\patches\FDSKY1.png"
copy ".\patches\sky2a.png" "%~2\patches\FDSKY2A.png"
copy ".\patches\sky2b.png" "%~2\patches\FDSKY2B.png"
copy ".\patches\sky2c.png" "%~2\patches\FDSKY2C.png"
copy ".\patches\sky2d.png" "%~2\patches\FDSKY2D.png"
copy ".\patches\sky3a.png" "%~2\patches\FDSKY3A.png"
copy ".\patches\sky3b.png" "%~2\patches\FDSKY3B.png"



::plutonia textures
copy ".\patches\mc2.png" "%~2\patches\fdmc2.png"
copy ".\patches\AROCK2.png" "%~2\patches\FDAROCK2.png"
copy ".\patches\AROCK3.png" "%~2\patches\FDAROCK3.png"
copy ".\patches\AROCK4.png" "%~2\patches\FDAROCK4.png"
copy ".\patches\AROCK5.png" "%~2\patches\FDAROCK5.png"
copy ".\patches\WFALL1.png" "%~2\patches\WFALL1.png"
copy ".\patches\WFALL2.png" "%~2\patches\WFALL2.png"
copy ".\patches\WFALL3.png" "%~2\patches\WFALL3.png"
copy ".\patches\WFALL4.png" "%~2\patches\WFALL4.png"

::freedoom unique textures
copy ".\patches\WFALL4.png" "%~2\patches\WFALL4.png"
copy ".\patches\RSKY1.png" "%~2\patches\FDSKY5.png"
copy ".\patches\RSKY2.png" "%~2\patches\FDSKY6.png"
copy ".\patches\RSKY3.png" "%~2\patches\FDSKY7.png"
copy ".\patches\AQCONC01.png" "%~2\patches\AQCONC01.png"
copy ".\patches\AQCONC02.png" "%~2\patches\AQCONC02.png"
copy ".\patches\AQCONC03.png" "%~2\patches\AQCONC03.png"
copy ".\patches\AQCONC04.png" "%~2\patches\AQCONC04.png"
copy ".\patches\AQCONC05.png" "%~2\patches\AQCONC05.png"
copy ".\patches\AQCONC06.png" "%~2\patches\AQCONC06.png"
copy ".\patches\AQCONC07.png" "%~2\patches\AQCONC07.png"
copy ".\patches\AQCONC08.png" "%~2\patches\AQCONC08.png"
copy ".\patches\AQCONC09.png" "%~2\patches\AQCONC09.png"
copy ".\patches\AQCONC10.png" "%~2\patches\AQCONC10.png"
copy ".\patches\AQCONC11.png" "%~2\patches\AQCONC11.png"
copy ".\patches\AQCONC12.png" "%~2\patches\AQCONC12.png"
copy ".\patches\AQCONC13.png" "%~2\patches\AQCONC13.png"
copy ".\patches\AQCONC14.png" "%~2\patches\AQCONC14.png"
copy ".\patches\AQCONC15.png" "%~2\patches\AQCONC15.png"
copy ".\patches\AQCONC16.png" "%~2\patches\AQCONC16.png"
copy ".\patches\AQCONC17.png" "%~2\patches\AQCONC17.png"
copy ".\patches\AQCONC18.png" "%~2\patches\AQCONC18.png"
copy ".\patches\AQDOOR01.png" "%~2\patches\AQDOOR01.png"
copy ".\patches\AQDOOR02.png" "%~2\patches\AQDOOR02.png"
copy ".\patches\AQLITE01.png" "%~2\patches\AQLITE01.png"
copy ".\patches\AQLITE02.png" "%~2\patches\AQLITE02.png"
copy ".\patches\AQLITE03.png" "%~2\patches\AQLITE03.png"
copy ".\patches\AQLITE04.png" "%~2\patches\AQLITE04.png"
copy ".\patches\AQLITE05.png" "%~2\patches\AQLITE05.png"
copy ".\patches\AQLITE06.png" "%~2\patches\AQLITE06.png"
copy ".\patches\AQLITE07.png" "%~2\patches\AQLITE07.png"
copy ".\patches\AQLITE08.png" "%~2\patches\AQLITE08.png"
copy ".\patches\AQLITE09.png" "%~2\patches\AQLITE09.png"
copy ".\patches\AQLITE10.png" "%~2\patches\AQLITE10.png"
copy ".\patches\AQLITE11.png" "%~2\patches\AQLITE11.png"
copy ".\patches\AQLITE12.png" "%~2\patches\AQLITE12.png"
copy ".\patches\AQLITE13.png" "%~2\patches\AQLITE13.png"
copy ".\patches\AQLITE14.png" "%~2\patches\AQLITE14.png"
copy ".\patches\AQLITE15.png" "%~2\patches\AQLITE15.png"
copy ".\patches\AQLITE16.png" "%~2\patches\AQLITE16.png"
copy ".\patches\AQLITE17.png" "%~2\patches\AQLITE17.png"
copy ".\patches\AQLITE18.png" "%~2\patches\AQLITE18.png"
copy ".\patches\AQLITE19.png" "%~2\patches\AQLITE19.png"
copy ".\patches\AQLITE20.png" "%~2\patches\AQLITE20.png"
copy ".\patches\AQLITE21.png" "%~2\patches\AQLITE21.png"
copy ".\patches\AQLITE22.png" "%~2\patches\AQLITE22.png"
copy ".\patches\AQLITE23.png" "%~2\patches\AQLITE23.png"
copy ".\patches\AQLITE24.png" "%~2\patches\AQLITE24.png"
copy ".\patches\AQLITE25.png" "%~2\patches\AQLITE25.png"
copy ".\patches\AQMETL01.png" "%~2\patches\AQMETL01.png"
copy ".\patches\AQMETL02.png" "%~2\patches\AQMETL02.png"
copy ".\patches\AQMETL03.png" "%~2\patches\AQMETL03.png"
copy ".\patches\AQMETL04.png" "%~2\patches\AQMETL04.png"
copy ".\patches\AQMETL05.png" "%~2\patches\AQMETL05.png"
copy ".\patches\AQMETL06.png" "%~2\patches\AQMETL06.png"
copy ".\patches\AQMETL07.png" "%~2\patches\AQMETL07.png"
copy ".\patches\AQMETL08.png" "%~2\patches\AQMETL08.png"
copy ".\patches\AQMETL09.png" "%~2\patches\AQMETL09.png"
copy ".\patches\AQMETL10.png" "%~2\patches\AQMETL10.png"
copy ".\patches\AQMETL11.png" "%~2\patches\AQMETL11.png"
copy ".\patches\AQMETL12.png" "%~2\patches\AQMETL12.png"
copy ".\patches\AQMETL13.png" "%~2\patches\AQMETL13.png"
copy ".\patches\AQMETL14.png" "%~2\patches\AQMETL14.png"
copy ".\patches\AQMETL15.png" "%~2\patches\AQMETL15.png"
copy ".\patches\AQMETL16.png" "%~2\patches\AQMETL16.png"
copy ".\patches\AQMETL17.png" "%~2\patches\AQMETL17.png"
copy ".\patches\AQMETL18.png" "%~2\patches\AQMETL18.png"
copy ".\patches\AQMETL19.png" "%~2\patches\AQMETL19.png"
copy ".\patches\AQMETL20.png" "%~2\patches\AQMETL20.png"
copy ".\patches\AQMETL21.png" "%~2\patches\AQMETL21.png"
copy ".\patches\AQMETL22.png" "%~2\patches\AQMETL22.png"
copy ".\patches\AQMETL23.png" "%~2\patches\AQMETL23.png"
copy ".\patches\AQMETL24.png" "%~2\patches\AQMETL24.png"
copy ".\patches\AQMETL25.png" "%~2\patches\AQMETL25.png"
copy ".\patches\AQMETL26.png" "%~2\patches\AQMETL26.png"
copy ".\patches\AQMETL27.png" "%~2\patches\AQMETL27.png"
copy ".\patches\AQMETL28.png" "%~2\patches\AQMETL28.png"
copy ".\patches\AQMETL29.png" "%~2\patches\AQMETL29.png"
copy ".\patches\AQMETL30.png" "%~2\patches\AQMETL30.png"
copy ".\patches\AQMETL31.png" "%~2\patches\AQMETL31.png"
copy ".\patches\AQMETL32.png" "%~2\patches\AQMETL32.png"
copy ".\patches\AQMETL33.png" "%~2\patches\AQMETL33.png"
copy ".\patches\AQPANL01.png" "%~2\patches\AQPANL01.png"
copy ".\patches\AQPANL02.png" "%~2\patches\AQPANL02.png"
copy ".\patches\AQPANL03.png" "%~2\patches\AQPANL03.png"
copy ".\patches\AQPANL04.png" "%~2\patches\AQPANL04.png"
copy ".\patches\AQPANL05.png" "%~2\patches\AQPANL05.png"
copy ".\patches\AQPANL06.png" "%~2\patches\AQPANL06.png"
copy ".\patches\AQPANL07.png" "%~2\patches\AQPANL07.png"
copy ".\patches\AQPANL08.png" "%~2\patches\AQPANL08.png"
copy ".\patches\AQPANL09.png" "%~2\patches\AQPANL09.png"
copy ".\patches\AQPANL10.png" "%~2\patches\AQPANL10.png"
copy ".\patches\AQPIPE01.png" "%~2\patches\AQPIPE01.png"
copy ".\patches\AQPIPE02.png" "%~2\patches\AQPIPE02.png"
copy ".\patches\AQPIPE03.png" "%~2\patches\AQPIPE03.png"
copy ".\patches\AQPIPE04.png" "%~2\patches\AQPIPE04.png"
copy ".\patches\AQPIPE05.png" "%~2\patches\AQPIPE05.png"
copy ".\patches\AQPIPE06.png" "%~2\patches\AQPIPE06.png"
copy ".\patches\AQPIPE07.png" "%~2\patches\AQPIPE07.png"
copy ".\patches\AQPIPE08.png" "%~2\patches\AQPIPE08.png"
copy ".\patches\AQPIPE09.png" "%~2\patches\AQPIPE09.png"
copy ".\patches\AQPIPE10.png" "%~2\patches\AQPIPE10.png"
copy ".\patches\AQPIPE11.png" "%~2\patches\AQPIPE11.png"
copy ".\patches\AQPIPE12.png" "%~2\patches\AQPIPE12.png"
copy ".\patches\AQPIPE13.png" "%~2\patches\AQPIPE13.png"
copy ".\patches\AQPIPE14.png" "%~2\patches\AQPIPE14.png"
copy ".\patches\AQRUST01.png" "%~2\patches\AQRUST01.png"
copy ".\patches\AQRUST02.png" "%~2\patches\AQRUST02.png"
copy ".\patches\AQRUST03.png" "%~2\patches\AQRUST03.png"
copy ".\patches\AQRUST04.png" "%~2\patches\AQRUST04.png"
copy ".\patches\AQRUST05.png" "%~2\patches\AQRUST05.png"
copy ".\patches\AQRUST06.png" "%~2\patches\AQRUST06.png"
copy ".\patches\AQRUST07.png" "%~2\patches\AQRUST07.png"
copy ".\patches\AQRUST08.png" "%~2\patches\AQRUST08.png"
copy ".\patches\AQRUST09.png" "%~2\patches\AQRUST09.png"
copy ".\patches\AQRUST10.png" "%~2\patches\AQRUST10.png"
copy ".\patches\AQSUPP01.png" "%~2\patches\AQSUPP01.png"
copy ".\patches\AQSUPP02.png" "%~2\patches\AQSUPP02.png"
copy ".\patches\AQSUPP03.png" "%~2\patches\AQSUPP03.png"
copy ".\patches\AQSUPP04.png" "%~2\patches\AQSUPP04.png"
copy ".\patches\AQSUPP05.png" "%~2\patches\AQSUPP05.png"
copy ".\patches\AQSUPP06.png" "%~2\patches\AQSUPP06.png"
copy ".\patches\AQSUPP07.png" "%~2\patches\AQSUPP07.png"
copy ".\patches\AQSUPP08.png" "%~2\patches\AQSUPP08.png"
copy ".\patches\AQSUPP09.png" "%~2\patches\AQSUPP09.png"
copy ".\patches\AQSUPP10.png" "%~2\patches\AQSUPP10.png"
copy ".\patches\AQSUPP11.png" "%~2\patches\AQSUPP11.png"
copy ".\patches\AQSUPP12.png" "%~2\patches\AQSUPP12.png"
copy ".\patches\AQTRIM01.png" "%~2\patches\AQTRIM01.png"
copy ".\patches\AQTRIM02.png" "%~2\patches\AQTRIM02.png"
copy ".\patches\AQTRIM03.png" "%~2\patches\AQTRIM03.png"
copy ".\patches\AQTRIM04.png" "%~2\patches\AQTRIM04.png"
copy ".\patches\AQTRIM05.png" "%~2\patches\AQTRIM05.png"
copy ".\patches\AQTRIM06.png" "%~2\patches\AQTRIM06.png"
copy ".\patches\AQTRIM07.png" "%~2\patches\AQTRIM07.png"
copy ".\patches\AQTRIM08.png" "%~2\patches\AQTRIM08.png"
copy ".\patches\AQDIRT01.png" "%~2\patches\AQDIRT01.png"
copy ".\patches\AQDIRT02.png" "%~2\patches\AQDIRT02.png"
copy ".\patches\AQDIRT03.png" "%~2\patches\AQDIRT03.png"
copy ".\patches\AQBRIK01.png" "%~2\patches\AQBRIK01.png"
copy ".\patches\AQBRIK02.png" "%~2\patches\AQBRIK02.png"
copy ".\patches\AQBRIK03.png" "%~2\patches\AQBRIK03.png"
copy ".\patches\AQSECT01.png" "%~2\patches\AQSECT01.png"
copy ".\patches\AQSECT02.png" "%~2\patches\AQSECT02.png"
copy ".\patches\AQSECT03.png" "%~2\patches\AQSECT03.png"
copy ".\patches\AQSECT04.png" "%~2\patches\AQSECT04.png"
copy ".\patches\AQSECT05.png" "%~2\patches\AQSECT05.png"
copy ".\patches\AQSECT06.png" "%~2\patches\AQSECT06.png"
copy ".\patches\AQSECT07.png" "%~2\patches\AQSECT07.png"
copy ".\patches\AQSECT08.png" "%~2\patches\AQSECT08.png"
copy ".\patches\AQSECT09.png" "%~2\patches\AQSECT09.png"
copy ".\patches\AQSECT10.png" "%~2\patches\AQSECT10.png"
copy ".\patches\AQSECT11.png" "%~2\patches\AQSECT11.png"
copy ".\patches\AQSECT12.png" "%~2\patches\AQSECT12.png"
copy ".\patches\AQSECT13.png" "%~2\patches\AQSECT13.png"
copy ".\patches\AQSECT14.png" "%~2\patches\AQSECT14.png"
copy ".\patches\AQSECT15.png" "%~2\patches\AQSECT15.png"
copy ".\patches\AQSECT16.png" "%~2\patches\AQSECT16.png"
copy ".\patches\AQCOMP01.png" "%~2\patches\AQCOMP01.png"
copy ".\patches\AQTILE01.png" "%~2\patches\AQTILE01.png"
copy ".\patches\AQTILE02.png" "%~2\patches\AQTILE02.png"
copy ".\patches\AQTILE03.png" "%~2\patches\AQTILE03.png"
copy ".\patches\AMOD1.png" "%~2\patches\AMOD1.png"
copy ".\patches\SHAWN01.png" "%~2\patches\SHAWN01.png"
copy ".\patches\SHAWN02.png" "%~2\patches\SHAWN02.png"
copy ".\patches\SHAWN03.png" "%~2\patches\SHAWN03.png"
copy ".\patches\MOD1.png" "%~2\patches\MOD1.png"
copy ".\patches\MOD2.png" "%~2\patches\MOD2.png"
copy ".\patches\MOD3.png" "%~2\patches\MOD3.png"
copy ".\patches\MOD4.png" "%~2\patches\MOD4.png"
copy ".\patches\MOD5.png" "%~2\patches\MOD5.png"
copy ".\patches\DEXAL.png" "%~2\patches\DEXAL.png"
copy ".\patches\BASE.png" "%~2\patches\BASE.png"
copy ".\patches\BASE2.png" "%~2\patches\BASE2.png"
copy ".\patches\BASE3.png" "%~2\patches\BASE3.png"
copy ".\patches\GLASS2B.png" "%~2\patches\GLASS2B.png"
copy ".\patches\GLASS1B.png" "%~2\patches\GLASS1B.png"
copy ".\patches\GLASS2.png" "%~2\patches\GLASS2.png"
copy ".\patches\GLASS1.png" "%~2\patches\GLASS1.png"
copy ".\patches\PDUMMY.png" "%~2\patches\PDUMMY.png"
copy ".\patches\SW2SKULL.png" "%~2\patches\SW2SKULL.png"
copy ".\patches\SW1SKULL.png" "%~2\patches\SW21KULL.png"
copy ".\patches\EXIT_RED.png" "%~2\patches\EXIT_RED.png"
copy ".\patches\EXIT_GRN.png" "%~2\patches\EXIT_GRN.png"
copy ".\patches\AG128_2.png" "%~2\patches\AG128_2.png"
copy ".\patches\DLEVSIGN.png" "%~2\patches\DLEVSIGN.png"

::custom textures
copy ".\patches\fireblu1.png" "%~2\patches\fdfblu1.png"
copy ".\patches\fireblu2.png" "%~2\patches\fdfblu2.png"

::flats
copy ".\flats\AQF001.png" "%~2\flats\AQF001.png"
copy ".\flats\AQF002.png" "%~2\flats\AQF002.png"
copy ".\flats\AQF003.png" "%~2\flats\AQF003.png"
copy ".\flats\AQF004.png" "%~2\flats\AQF004.png"
copy ".\flats\AQF005.png" "%~2\flats\AQF005.png"
copy ".\flats\AQF006.png" "%~2\flats\AQF006.png"
copy ".\flats\AQF007.png" "%~2\flats\AQF007.png"
copy ".\flats\AQF008.png" "%~2\flats\AQF008.png"
copy ".\flats\AQF009.png" "%~2\flats\AQF009.png"
copy ".\flats\AQF010.png" "%~2\flats\AQF010.png"
copy ".\flats\AQF011.png" "%~2\flats\AQF011.png"
copy ".\flats\AQF012.png" "%~2\flats\AQF012.png"
copy ".\flats\AQF013.png" "%~2\flats\AQF013.png"
copy ".\flats\AQF014.png" "%~2\flats\AQF014.png"
copy ".\flats\AQF015.png" "%~2\flats\AQF015.png"
copy ".\flats\AQF016.png" "%~2\flats\AQF016.png"
copy ".\flats\AQF017.png" "%~2\flats\AQF017.png"
copy ".\flats\AQF018.png" "%~2\flats\AQF018.png"
copy ".\flats\AQF019.png" "%~2\flats\AQF019.png"
copy ".\flats\AQF020.png" "%~2\flats\AQF020.png"
copy ".\flats\AQF021.png" "%~2\flats\AQF021.png"
copy ".\flats\AQF022.png" "%~2\flats\AQF022.png"
copy ".\flats\AQF023.png" "%~2\flats\AQF023.png"
copy ".\flats\AQF024.png" "%~2\flats\AQF024.png"
copy ".\flats\AQF025.png" "%~2\flats\AQF025.png"
copy ".\flats\AQF026.png" "%~2\flats\AQF026.png"
copy ".\flats\AQF027.png" "%~2\flats\AQF027.png"
copy ".\flats\AQF028.png" "%~2\flats\AQF028.png"
copy ".\flats\AQF029.png" "%~2\flats\AQF029.png"
copy ".\flats\AQF030.png" "%~2\flats\AQF030.png"
copy ".\flats\AQF031.png" "%~2\flats\AQF031.png"
copy ".\flats\AQF032.png" "%~2\flats\AQF032.png"
copy ".\flats\AQF033.png" "%~2\flats\AQF033.png"
copy ".\flats\AQF034.png" "%~2\flats\AQF034.png"
copy ".\flats\AQF035.png" "%~2\flats\AQF035.png"
copy ".\flats\AQF036.png" "%~2\flats\AQF036.png"
copy ".\flats\AQF037.png" "%~2\flats\AQF037.png"
copy ".\flats\AQF038.png" "%~2\flats\AQF038.png"
copy ".\flats\AQF039.png" "%~2\flats\AQF039.png"
copy ".\flats\AQF040.png" "%~2\flats\AQF040.png"
copy ".\flats\AQF041.png" "%~2\flats\AQF041.png"
copy ".\flats\AQF042.png" "%~2\flats\AQF042.png"
copy ".\flats\AQF043.png" "%~2\flats\AQF043.png"
copy ".\flats\AQF044.png" "%~2\flats\AQF044.png"
copy ".\flats\AQF045.png" "%~2\flats\AQF045.png"
copy ".\flats\AQF046.png" "%~2\flats\AQF046.png"
copy ".\flats\AQF047.png" "%~2\flats\AQF047.png"
copy ".\flats\AQF048.png" "%~2\flats\AQF048.png"
copy ".\flats\AQF049.png" "%~2\flats\AQF049.png"
copy ".\flats\AQF050.png" "%~2\flats\AQF050.png"
copy ".\flats\AQF051.png" "%~2\flats\AQF051.png"
copy ".\flats\AQF052.png" "%~2\flats\AQF052.png"
copy ".\flats\AQF053.png" "%~2\flats\AQF053.png"
copy ".\flats\AQF054.png" "%~2\flats\AQF054.png"
copy ".\flats\AQF055.png" "%~2\flats\AQF055.png"
copy ".\flats\AQF056.png" "%~2\flats\AQF056.png"
copy ".\flats\AQF057.png" "%~2\flats\AQF057.png"
copy ".\flats\AQF058.png" "%~2\flats\AQF058.png"
copy ".\flats\AQF059.png" "%~2\flats\AQF059.png"
copy ".\flats\AQF060.png" "%~2\flats\AQF060.png"
copy ".\flats\AQF061.png" "%~2\flats\AQF061.png"
copy ".\flats\AQF062.png" "%~2\flats\AQF062.png"
copy ".\flats\AQF063.png" "%~2\flats\AQF063.png"
copy ".\flats\AQF064.png" "%~2\flats\AQF064.png"
copy ".\flats\AQF065.png" "%~2\flats\AQF065.png"
copy ".\flats\AQF066.png" "%~2\flats\AQF066.png"
copy ".\flats\AQF067.png" "%~2\flats\AQF067.png"
copy ".\flats\AQF068.png" "%~2\flats\AQF068.png"
copy ".\flats\AQF069.png" "%~2\flats\AQF069.png"
copy ".\flats\AQF070.png" "%~2\flats\AQF070.png"
copy ".\flats\AQF071.png" "%~2\flats\AQF071.png"
copy ".\flats\AQF072.png" "%~2\flats\AQF072.png"
copy ".\flats\AQF073.png" "%~2\flats\AQF073.png"
copy ".\flats\AQF074.png" "%~2\flats\AQF074.png"
copy ".\flats\AQF075.png" "%~2\flats\AQF075.png"
copy ".\flats\AQF076.png" "%~2\flats\AQF076.png"

::plutonia textures
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
)

::Always get TNT Replacements, which are included in freedoom2 but not freedoom1
::=======================
copy ".\patches\doenite.png" "%~2\patches\doenite.png"
copy ".\patches\donnite.png" "%~2\patches\donnite.png"
copy ".\patches\downite.png" "%~2\patches\downite.png"
copy ".\patches\dosnite.png" "%~2\patches\dosnite.png"
copy ".\patches\doehell.png" "%~2\patches\doehell.png"
copy ".\patches\donhell.png" "%~2\patches\donhell.png"
copy ".\patches\dowhell.png" "%~2\patches\dowhell.png"
copy ".\patches\doshell.png" "%~2\patches\doshell.png"
copy ".\patches\doeday.png" "%~2\patches\doeday.png"
copy ".\patches\donday.png" "%~2\patches\donday.png"
copy ".\patches\dowday.png" "%~2\patches\dowday.png"
copy ".\patches\dosday.png" "%~2\patches\dosday.png"
copy ".\patches\blod64a.png" "%~2\patches\blod64a.png"
copy ".\patches\blod64b.png" "%~2\patches\blod64b.png"
copy ".\patches\blod128a.png" "%~2\patches\blod128a.png"
copy ".\patches\blod128b.png" "%~2\patches\blod128b.png"
copy ".\patches\crlwdh6.png" "%~2\patches\crlwdh6.png"
copy ".\patches\crlwdl6.png" "%~2\patches\crlwdl6.png"
copy ".\patches\crlwdl6b.png" "%~2\patches\crlwdl6b.png"
copy ".\patches\crlwdl6c.png" "%~2\patches\crlwdl6c.png"
copy ".\patches\crlwdl6d.png" "%~2\patches\crlwdl6d.png"
copy ".\patches\crlwdl6e.png" "%~2\patches\crlwdl6e.png"
copy ".\patches\crlwdl12.png" "%~2\patches\crlwdl12.png"
copy ".\patches\crlwds6.png" "%~2\patches\crlwds6.png"
copy ".\patches\crlwdt3.png" "%~2\patches\crlwdt3.png"
copy ".\patches\crwdh6.png" "%~2\patches\crwdh6.png"
copy ".\patches\crwdh6b.png" "%~2\patches\crwdh6b.png"
copy ".\patches\crwdl6b.png" "%~2\patches\crwdl6b.png"
copy ".\patches\crwdl6c.png" "%~2\patches\crwdl6c.png"
copy ".\patches\crwdl6d.png" "%~2\patches\crwdl6d.png"
copy ".\patches\crwdl12.png" "%~2\patches\crwdl12.png"
copy ".\patches\crwds6.png" "%~2\patches\crwds6.png"
copy ".\patches\crwdt3.png" "%~2\patches\crwdt3.png"
copy ".\patches\crwdvs3.png" "%~2\patches\crwdvs3.png"
copy ".\patches\bul64a.png" "%~2\patches\bul64a.png"
copy ".\patches\bul64b.png" "%~2\patches\bul64b.png"
copy ".\patches\bul64c.png" "%~2\patches\bul64c.png"
copy ".\patches\bul64d.png" "%~2\patches\bul64d.png"
copy ".\patches\btntcrat.png" "%~2\patches\btntcrat.png"
copy ".\patches\romero1.png" "%~2\patches\romero1.png"
copy ".\patches\smcratg.png" "%~2\patches\smcratg.png"
copy ".\patches\dogldir.png" "%~2\patches\dogldir.png"
copy ".\patches\dokodo1b.png" "%~2\patches\dokodo1b.png"
copy ".\patches\dokodo2b.png" "%~2\patches\dokodo2b.png"
copy ".\patches\dobwire.png" "%~2\patches\dobwire.png"
copy ".\patches\dobwire2.png" "%~2\patches\dobwire2.png"
copy ".\patches\eggreeni.png" "%~2\patches\eggreeni.png"
copy ".\patches\egredi.png" "%~2\patches\egredi.png"
copy ".\patches\yellite1.png" "%~2\patches\yellite1.png"
copy ".\patches\yellite2.png" "%~2\patches\yellite2.png"
copy ".\patches\yellite3.png" "%~2\patches\yellite3.png"
copy ".\patches\yeltnt.png" "%~2\patches\yeltnt.png"
copy ".\patches\grnlit1.png" "%~2\patches\grnlit1.png"
copy ".\patches\redlite1.png" "%~2\patches\redlite1.png"
copy ".\patches\redlite2.png" "%~2\patches\redlite2.png"
copy ".\patches\dored.png" "%~2\patches\dored.png"
copy ".\patches\dotntdr.png" "%~2\patches\dotntdr.png"
copy ".\patches\altaqua.png" "%~2\patches\altaqua.png"
copy ".\patches\asphalt.png" "%~2\patches\asphalt.png"
copy ".\patches\cyan.png" "%~2\patches\cyan.png"
copy ".\patches\dobigtva.png" "%~2\patches\dobigtva.png"
copy ".\patches\dobigtvb.png" "%~2\patches\dobigtvb.png"
copy ".\patches\dobigtvc.png" "%~2\patches\dobigtvc.png"
copy ".\patches\dobigtvd.png" "%~2\patches\dobigtvd.png"
copy ".\patches\doblip1a.png" "%~2\patches\doblip1a.png"
copy ".\patches\doblip2a.png" "%~2\patches\doblip2a.png"
copy ".\patches\doblip3a.png" "%~2\patches\doblip3a.png"
copy ".\patches\doblip4a.png" "%~2\patches\doblip4a.png"
copy ".\patches\doslvr11.png" "%~2\patches\doslvr11.png"
copy ".\patches\doslvr12.png" "%~2\patches\doslvr12.png"
copy ".\patches\doslvr13.png" "%~2\patches\doslvr13.png"
copy ".\patches\doslvr14.png" "%~2\patches\doslvr14.png"
copy ".\patches\doslvr21.png" "%~2\patches\doslvr21.png"
copy ".\patches\doslvr22.png" "%~2\patches\doslvr22.png"
copy ".\patches\doslvr23.png" "%~2\patches\doslvr23.png"
copy ".\patches\doslvr24.png" "%~2\patches\doslvr24.png"
copy ".\patches\dospi1b.png" "%~2\patches\dospi1b.png"
copy ".\patches\dospi2b.png" "%~2\patches\dospi2b.png"
copy ".\patches\dospi3b.png" "%~2\patches\dospi3b.png"
copy ".\patches\dospi4b.png" "%~2\patches\dospi4b.png"
copy ".\patches\dosw1.png" "%~2\patches\dosw1.png"
copy ".\patches\dosw1c.png" "%~2\patches\dosw1c.png"
copy ".\patches\dosw2.png" "%~2\patches\dosw2.png"
copy ".\patches\dosw2c.png" "%~2\patches\dosw2c.png"
copy ".\patches\dosw3.png" "%~2\patches\dosw3.png"
copy ".\patches\dosw3c.png" "%~2\patches\dosw3c.png"
copy ".\patches\dosw4.png" "%~2\patches\dosw4.png"
copy ".\patches\dosw4c.png" "%~2\patches\dosw4c.png"
copy ".\patches\doswx1.png" "%~2\patches\doswx1.png"
copy ".\patches\doswx1c.png" "%~2\patches\doswx1c.png"
copy ".\patches\doswx2.png" "%~2\patches\doswx2.png"
copy ".\patches\doswx2c.png" "%~2\patches\doswx2c.png"
copy ".\patches\doswx3.png" "%~2\patches\doswx3.png"
copy ".\patches\doswx3c.png" "%~2\patches\doswx3c.png"
copy ".\patches\doswx4.png" "%~2\patches\doswx4.png"
copy ".\patches\doswx4c.png" "%~2\patches\doswx4c.png"
copy ".\patches\dotv1b.png" "%~2\patches\dotv1b.png"
copy ".\patches\dotv2b.png" "%~2\patches\dotv2b.png"
copy ".\patches\dotv3b.png" "%~2\patches\dotv3b.png"
copy ".\patches\dotv4b.png" "%~2\patches\dotv4b.png"
copy ".\patches\dowebl.png" "%~2\patches\dowebl.png"
copy ".\patches\dowebr.png" "%~2\patches\dowebr.png"
copy ".\patches\dowindow.png" "%~2\patches\dowindow.png"
copy ".\patches\drfront.png" "%~2\patches\drfront.png"
copy ".\patches\drside1.png" "%~2\patches\drside1.png"
copy ".\patches\drside2.png" "%~2\patches\drside2.png"
copy ".\patches\drtopfr.png" "%~2\patches\drtopfr.png"
copy ".\patches\drtopsid.png" "%~2\patches\drtopsid.png"
copy ".\patches\fence4.png" "%~2\patches\fence4.png"
copy ".\patches\fence5.png" "%~2\patches\fence5.png"
copy ".\patches\grnopen.png" "%~2\patches\grnopen.png"
copy ".\patches\longwall.png" "%~2\patches\longwall.png"
copy ".\patches\mtnt2.png" "%~2\patches\mtnt2.png"
copy ".\patches\mural1.png" "%~2\patches\mural1.png"
copy ".\patches\mural2.png" "%~2\patches\mural2.png"
copy ".\patches\pblak.png" "%~2\patches\pblak.png"
copy ".\patches\pcwinl.png" "%~2\patches\pcwinl.png"
copy ".\patches\pillar.png" "%~2\patches\pillar.png"
copy ".\patches\pivy3.png" "%~2\patches\pivy3.png"
copy ".\patches\pl_01.png" "%~2\patches\pl_01.png"
copy ".\patches\pl_05.png" "%~2\patches\pl_05.png"
copy ".\patches\pl_10.png" "%~2\patches\pl_10.png"
copy ".\patches\pl_18.png" "%~2\patches\pl_18.png"
copy ".\patches\pl_19.png" "%~2\patches\pl_19.png"
copy ".\patches\pl_20.png" "%~2\patches\pl_20.png"
copy ".\patches\pl_25.png" "%~2\patches\pl_25.png"
copy ".\patches\pl_31.png" "%~2\patches\pl_31.png"
copy ".\patches\pl_a.png" "%~2\patches\pl_a.png"
copy ".\patches\pl_c.png" "%~2\patches\pl_c.png"
copy ".\patches\pl_n.png" "%~2\patches\pl_n.png"
copy ".\patches\pl_t.png" "%~2\patches\pl_t.png"
copy ".\patches\pl_u.png" "%~2\patches\pl_u.png"
copy ".\patches\preel1.png" "%~2\patches\preel1.png"
copy ".\patches\preel2.png" "%~2\patches\preel2.png"
copy ".\patches\preel3.png" "%~2\patches\preel3.png"
copy ".\patches\preel4.png" "%~2\patches\preel4.png"
copy ".\patches\preel5.png" "%~2\patches\preel5.png"
copy ".\patches\preel6.png" "%~2\patches\preel6.png"
copy ".\patches\preel7.png" "%~2\patches\preel7.png"
copy ".\patches\pston2.png" "%~2\patches\pston2.png"
copy ".\patches\redopen.png" "%~2\patches\redopen.png"
copy ".\patches\redtnt2.png" "%~2\patches\redtnt2.png"
copy ".\patches\saw1.png" "%~2\patches\saw1.png"
copy ".\patches\saw1sd.png" "%~2\patches\saw1sd.png"
copy ".\patches\saw2.png" "%~2\patches\saw2.png"
copy ".\patches\saw2sd.png" "%~2\patches\saw2sd.png"
copy ".\patches\saw3.png" "%~2\patches\saw3.png"
copy ".\patches\saw3sd.png" "%~2\patches\saw3sd.png"
copy ".\patches\saw4.png" "%~2\patches\saw4.png"
copy ".\patches\saw4sd.png" "%~2\patches\saw4sd.png"
copy ".\patches\saw5.png" "%~2\patches\saw5.png"
copy ".\patches\saw5sd.png" "%~2\patches\saw5sd.png"
copy ".\patches\saw6.png" "%~2\patches\saw6.png"
copy ".\patches\saw6sd.png" "%~2\patches\saw6sd.png"
copy ".\patches\skirting.png" "%~2\patches\skirting.png"
copy ".\patches\smfiller.png" "%~2\patches\smfiller.png"
copy ".\patches\stonew1.png" "%~2\patches\stonew1.png"
copy ".\patches\stonew5.png" "%~2\patches\stonew5.png"
copy ".\patches\stwall.png" "%~2\patches\stwall.png"
copy ".\patches\tyunder1.png" "%~2\patches\tyunder1.png"
copy ".\patches\tywheel1.png" "%~2\patches\tywheel1.png"
copy ".\patches\tywfall1.png" "%~2\patches\tywfall1.png"
copy ".\patches\tywfall2.png" "%~2\patches\tywfall2.png"
copy ".\patches\tywfall3.png" "%~2\patches\tywfall3.png"
copy ".\patches\tywfall4.png" "%~2\patches\tywfall4.png"
copy ".\patches\tywfall1.png" "%~2\patches\wfall1.png"
copy ".\patches\tywfall2.png" "%~2\patches\wfall2.png"
copy ".\patches\tywfall3.png" "%~2\patches\wfall3.png"
copy ".\patches\tywfall4.png" "%~2\patches\wfall4.png"
copy ".\patches\bigmural.png" "%~2\patches\bigmural.png"
copy ".\patches\bigwall.png" "%~2\patches\bigwall.png"
copy ".\patches\brnopen.png" "%~2\patches\brnopen.png"
copy ".\patches\carllf1.png" "%~2\patches\carllf1.png"
copy ".\patches\carllf2.png" "%~2\patches\carllf2.png"
copy ".\patches\carlrt1.png" "%~2\patches\carlrt1.png"
copy ".\patches\carlrt2.png" "%~2\patches\carlrt2.png"
copy ".\patches\cavern1.png" "%~2\patches\cavern1.png"
copy ".\patches\cavern4.png" "%~2\patches\cavern4.png"
copy ".\patches\cavern5.png" "%~2\patches\cavern5.png"
copy ".\patches\cavern6.png" "%~2\patches\cavern6.png"
copy ".\patches\cavern7.png" "%~2\patches\cavern7.png"
copy ".\patches\clwdvs3.png" "%~2\patches\clwdvs3.png"
copy ".\patches\doglpanl.png" "%~2\patches\doglpanl.png"
copy ".\patches\dogrid.png" "%~2\patches\dogrid.png"
copy ".\patches\dogrmsc.png" "%~2\patches\dogrmsc.png"
copy ".\patches\dogrnmen.png" "%~2\patches\dogrnmen.png"
copy ".\patches\dokgrir.png" "%~2\patches\dokgrir.png"
copy ".\patches\dopunk4.png" "%~2\patches\dopunk4.png"
copy ".\patches\bcrat32.png" "%~2\patches\bcrat32.png"
copy ".\patches\bcrat16.png" "%~2\patches\bcrat16.png"
copy ".\patches\dosha1.png" "%~2\patches\dosha1.png"
copy ".\patches\doshb1.png" "%~2\patches\doshb1.png"
copy ".\patches\doshc1.png" "%~2\patches\doshc1.png"
copy ".\patches\doshd1.png" "%~2\patches\doshd1.png"
copy ".\patches\doshe1.png" "%~2\patches\doshe1.png"
copy ".\patches\doshf1.png" "%~2\patches\doshf1.png"
copy ".\patches\blutnt.png" "%~2\patches\blutnt.png"

::copy over freedoom2 skies
copy ".\patches\rsky1.png" "%~2\patches\FDSKY5.png"
copy ".\patches\rsky2.png" "%~2\patches\FDSKY6.png"
copy ".\patches\rsky3.png" "%~2\patches\FDSKY7.png"

::Copy Over Maps
::=================
copy ".\maps\MAP01.WAD" "%~2\maps\FD201.wad"
copy ".\maps\MAP02.WAD" "%~2\maps\FD202.wad"
copy ".\maps\MAP03.WAD" "%~2\maps\FD203.wad"
copy ".\maps\MAP04.WAD" "%~2\maps\FD204.wad"
copy ".\maps\MAP05.WAD" "%~2\maps\FD205.wad"
copy ".\maps\MAP06.WAD" "%~2\maps\FD206.wad"
copy ".\maps\MAP07.WAD" "%~2\maps\FD207.wad"
copy ".\maps\MAP08.WAD" "%~2\maps\FD208.wad"
copy ".\maps\MAP09.WAD" "%~2\maps\FD209.wad"
copy ".\maps\MAP10.WAD" "%~2\maps\FD210.wad"
copy ".\maps\MAP11.WAD" "%~2\maps\FD211.wad"
copy ".\maps\MAP12.WAD" "%~2\maps\FD212.wad"
copy ".\maps\MAP13.WAD" "%~2\maps\FD213.wad"
copy ".\maps\MAP14.WAD" "%~2\maps\FD214.wad"
copy ".\maps\MAP15.WAD" "%~2\maps\FD215.wad"
copy ".\maps\MAP16.WAD" "%~2\maps\FD216.wad"
copy ".\maps\MAP17.WAD" "%~2\maps\FD217.wad"
copy ".\maps\MAP18.WAD" "%~2\maps\FD218.wad"
copy ".\maps\MAP19.WAD" "%~2\maps\FD219.wad"
copy ".\maps\MAP20.WAD" "%~2\maps\FD220.wad"
copy ".\maps\MAP21.WAD" "%~2\maps\FD221.wad"
copy ".\maps\MAP22.WAD" "%~2\maps\FD222.wad"
copy ".\maps\MAP23.WAD" "%~2\maps\FD223.wad"
copy ".\maps\MAP24.WAD" "%~2\maps\FD224.wad"
copy ".\maps\MAP25.WAD" "%~2\maps\FD225.wad"
copy ".\maps\MAP26.WAD" "%~2\maps\FD226.wad"
copy ".\maps\MAP27.WAD" "%~2\maps\FD227.wad"
copy ".\maps\MAP28.WAD" "%~2\maps\FD228.wad"
copy ".\maps\MAP29.WAD" "%~2\maps\FD229.wad"
copy ".\maps\MAP30.WAD" "%~2\maps\FD230.wad"
copy ".\maps\MAP31.WAD" "%~2\maps\FD231.wad"
copy ".\maps\MAP32.WAD" "%~2\maps\FD232.wad"

copy ".\music\d_read_m.mid" "%~2\music\f_read_m.mid"
copy ".\music\d_dm2int.mid" "%~2\music\f_dm2int.mid"
copy ".\music\d_runnin.mid" "%~2\music\f_runnin.mid"
copy ".\music\d_stalks.mid" "%~2\music\f_stalks.mid"
copy ".\music\d_countd.mid" "%~2\music\f_countd.mid"
copy ".\music\d_betwee.mid" "%~2\music\f_betwee.mid"
copy ".\music\d_doom.mid" "%~2\music\f_doom.mid"
copy ".\music\d_the_da.mid" "%~2\music\f_the_da.mid"
copy ".\music\d_shawn.mid" "%~2\music\f_shawn.mid"
copy ".\music\d_ddtblu.mid" "%~2\music\f_ddtblu.mid"
copy ".\music\d_in_cit.mid" "%~2\music\f_in_cit.mid"
copy ".\music\d_dead.mid" "%~2\music\f_dead.mid"
copy ".\music\d_stlks2.mid" "%~2\music\f_stlks2.mid"
copy ".\music\d_theda2.mid" "%~2\music\f_theda2.mid"
copy ".\music\d_doom2.mid" "%~2\music\f_doom2.mid"
copy ".\music\d_ddtbl2.mid" "%~2\music\f_ddtbl2.mid"
copy ".\music\d_runni2.mid" "%~2\music\f_runni2.mid"
copy ".\music\d_dead2.mid" "%~2\music\f_dead2.mid"
copy ".\music\d_stlks3.mid" "%~2\music\f_stlks3.mid"
copy ".\music\d_romeo.mid" "%~2\music\f_romeo.mid"
copy ".\music\d_shawn2.mid" "%~2\music\f_shawn2.mid"
copy ".\music\d_messag.mid" "%~2\music\f_messag.mid"
copy ".\music\d_count2.mid" "%~2\music\f_count2.mid"
copy ".\music\d_ddtbl3.mid" "%~2\music\f_ddtbl3.mid"
copy ".\music\d_ampie.mid" "%~2\music\f_ampie.mid"
copy ".\music\d_theda3.mid" "%~2\music\f_theda3.mid"
copy ".\music\d_adrian.mid" "%~2\music\f_adrian.mid"
copy ".\music\d_messg2.mid" "%~2\music\f_messg2.mid"
copy ".\music\d_romer2.mid" "%~2\music\f_romer2.mid"
copy ".\music\d_tense.mid" "%~2\music\f_tense.mid"
copy ".\music\d_shawn3.mid" "%~2\music\f_shawn3.mid"
copy ".\music\d_openin.mid" "%~2\music\f_openin.mid"
copy ".\music\d_evil.mid" "%~2\music\f_evil.mid"
copy ".\music\d_ultima.mid" "%~2\music\f_ultima.mid"

cd "%~dp0"
rmdir /q /s "%~dp0_DOOM_IWAD/freedoom2" > nul 2>&1
