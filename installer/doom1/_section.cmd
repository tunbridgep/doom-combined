::Check for wad file. If it's not there, jump out
if not exist "%~3\DOOM.WAD" (
    echo DOOM.WAD not found. Skipping... >&2
    type "%~5\TEXTURES.doom1.dummy" >> "%~2\TEXTURES.txt"
    EXIT /B %ERRORLEVEL%
)

cd "%~5"

::Copy our installer files
xcopy "graphics\*" "%~2\graphics" /isy > nul
copy "IN_E1.txt" "%~2\IN_E1.txt"
copy "IN_E2.txt" "%~2\IN_E2.txt"
copy "IN_E3.txt" "%~2\IN_E3.txt"
type "ANIMDEFS.doom1.prt" >> "%~2\ANIMDEFS.txt"
type "TEXTURES.doom1.prt" >> "%~2\TEXTURES.txt"
type "MAPINFO.doom1.prt" >> "%~2\MAPINFO.txt"

::copy over thyinterpic MAPINFO stuff
if not exist "%~3\thyinterpic.wad" (
    type "MAPINFO.doom1.e4.prt" >> "%~2\MAPINFO.txt"
    copy "graphics\interpic.png" "%~2\graphics\DNTERPIC.png"
)

::Extract Files
::=======================
::call "%~1\display_section.cmd" Doom 1 >&2
echo Fetching data from DOOM.WAD... >&2
if not exist "%~3\doom1" mkdir "%~3\doom1"
cd "%~3\doom1"
call %4 "%~3\DOOM.WAD"
echo Copying data to %~2... >&2

::copy over graphics files
::=============================
::misc graphics
copy ".\graphics\credit.png" "%~2\graphics\D1CREDIT.png"
copy ".\graphics\end0.png" "%~2\graphics\END0.png"
copy ".\graphics\end1.png" "%~2\graphics\END1.png"
copy ".\graphics\end2.png" "%~2\graphics\END2.png"
copy ".\graphics\end3.png" "%~2\graphics\END3.png"
copy ".\graphics\end4.png" "%~2\graphics\END4.png"
copy ".\graphics\end5.png" "%~2\graphics\END5.png"
copy ".\graphics\end6.png" "%~2\graphics\END6.png"
copy ".\graphics\endpic.png" "%~2\graphics\ENDPIC.png"
copy ".\graphics\help1.png" "%~2\graphics\HELP1.png"
copy ".\graphics\pfub1.png" "%~2\graphics\PFUB1.png"
copy ".\graphics\pfub2.png" "%~2\graphics\PFUB2.png"
copy ".\graphics\victory2.png" "%~2\graphics\VICTORY2.png"
copy ".\graphics\victory2.png" "%~2\graphics\VICTORY2.png"

::intermission screens
copy ".\graphics\wimap0.png" "%~2\graphics\WIMAP0.png"
copy ".\graphics\wimap1.png" "%~2\graphics\WIMAP1.png"
copy ".\graphics\wimap2.png" "%~2\graphics\WIMAP2.png"
copy ".\graphics\wiurh0.png" "%~2\graphics\WIURH0.png"
copy ".\graphics\wiurh1.png" "%~2\graphics\WIURH1.png"
copy ".\graphics\wisplat.png" "%~2\graphics\WISPLAT.png"

::graphics
copy ".\graphics\wia00000.png" "%~2\graphics\WIA00000.png"
copy ".\graphics\wia00001.png" "%~2\graphics\WIA00001.png"
copy ".\graphics\wia00002.png" "%~2\graphics\WIA00002.png"
copy ".\graphics\wia00100.png" "%~2\graphics\WIA00100.png"
copy ".\graphics\wia00101.png" "%~2\graphics\WIA00101.png"
copy ".\graphics\wia00102.png" "%~2\graphics\WIA00102.png"
copy ".\graphics\wia00200.png" "%~2\graphics\WIA00200.png"
copy ".\graphics\wia00201.png" "%~2\graphics\WIA00201.png"
copy ".\graphics\wia00202.png" "%~2\graphics\WIA00202.png"
copy ".\graphics\wia00300.png" "%~2\graphics\WIA00300.png"
copy ".\graphics\wia00301.png" "%~2\graphics\WIA00301.png"
copy ".\graphics\wia00302.png" "%~2\graphics\WIA00302.png"
copy ".\graphics\wia00400.png" "%~2\graphics\WIA00400.png"
copy ".\graphics\wia00401.png" "%~2\graphics\WIA00401.png"
copy ".\graphics\wia00402.png" "%~2\graphics\WIA00402.png"
copy ".\graphics\wia00500.png" "%~2\graphics\WIA00500.png"
copy ".\graphics\wia00501.png" "%~2\graphics\WIA00501.png"
copy ".\graphics\wia00502.png" "%~2\graphics\WIA00502.png"
copy ".\graphics\wia00600.png" "%~2\graphics\WIA00600.png"
copy ".\graphics\wia00601.png" "%~2\graphics\WIA00601.png"
copy ".\graphics\wia00602.png" "%~2\graphics\WIA00602.png"
copy ".\graphics\wia00700.png" "%~2\graphics\WIA00700.png"
copy ".\graphics\wia00701.png" "%~2\graphics\WIA00701.png"
copy ".\graphics\wia00702.png" "%~2\graphics\WIA00702.png"
copy ".\graphics\wia00800.png" "%~2\graphics\WIA00800.png"
copy ".\graphics\wia00801.png" "%~2\graphics\WIA00801.png"
copy ".\graphics\wia00802.png" "%~2\graphics\WIA00802.png"
copy ".\graphics\wia00900.png" "%~2\graphics\WIA00900.png"
copy ".\graphics\wia00901.png" "%~2\graphics\WIA00901.png"
copy ".\graphics\wia00902.png" "%~2\graphics\WIA00902.png"
copy ".\graphics\wia10000.png" "%~2\graphics\WIA10000.png"
copy ".\graphics\wia10100.png" "%~2\graphics\WIA10100.png"
copy ".\graphics\wia10200.png" "%~2\graphics\WIA10200.png"
copy ".\graphics\wia10300.png" "%~2\graphics\WIA10300.png"
copy ".\graphics\wia10400.png" "%~2\graphics\WIA10400.png"
copy ".\graphics\wia10500.png" "%~2\graphics\WIA10500.png"
copy ".\graphics\wia10600.png" "%~2\graphics\WIA10600.png"
copy ".\graphics\wia10700.png" "%~2\graphics\WIA10700.png"
copy ".\graphics\wia10701.png" "%~2\graphics\WIA10701.png"
copy ".\graphics\wia10702.png" "%~2\graphics\WIA10702.png"
copy ".\graphics\wia20000.png" "%~2\graphics\WIA20000.png"
copy ".\graphics\wia20001.png" "%~2\graphics\WIA20001.png"
copy ".\graphics\wia20002.png" "%~2\graphics\WIA20002.png"
copy ".\graphics\wia20100.png" "%~2\graphics\WIA20100.png"
copy ".\graphics\wia20101.png" "%~2\graphics\WIA20101.png"
copy ".\graphics\wia20102.png" "%~2\graphics\WIA20102.png"
copy ".\graphics\wia20200.png" "%~2\graphics\WIA20200.png"
copy ".\graphics\wia20201.png" "%~2\graphics\WIA20201.png"
copy ".\graphics\wia20202.png" "%~2\graphics\WIA20202.png"
copy ".\graphics\wia20300.png" "%~2\graphics\WIA20300.png"
copy ".\graphics\wia20301.png" "%~2\graphics\WIA20301.png"
copy ".\graphics\wia20302.png" "%~2\graphics\WIA20302.png"
copy ".\graphics\wia20400.png" "%~2\graphics\WIA20400.png"
copy ".\graphics\wia20401.png" "%~2\graphics\WIA20401.png"
copy ".\graphics\wia20402.png" "%~2\graphics\WIA20402.png"
copy ".\graphics\wia20500.png" "%~2\graphics\WIA20500.png"
copy ".\graphics\wia20501.png" "%~2\graphics\WIA20501.png"
copy ".\graphics\wia20502.png" "%~2\graphics\WIA20502.png"

::Copy Over Maps
::=================
copy ".\maps\E1M1.WAD" "%~2\maps\E1M1.wad"
copy ".\maps\E1M2.WAD" "%~2\maps\E1M2.wad"
copy ".\maps\E1M3.WAD" "%~2\maps\E1M3.wad"
copy ".\maps\E1M4.WAD" "%~2\maps\E1M4.wad"
copy ".\maps\E1M5.WAD" "%~2\maps\E1M5.wad"
copy ".\maps\E1M6.WAD" "%~2\maps\E1M6.wad"
copy ".\maps\E1M7.WAD" "%~2\maps\E1M7.wad"
copy ".\maps\E1M8.WAD" "%~2\maps\E1M8.wad"
copy ".\maps\E1M9.WAD" "%~2\maps\E1M9.wad"

copy ".\maps\E2M1.WAD" "%~2\maps\E2M1.wad"
copy ".\maps\E2M2.WAD" "%~2\maps\E2M2.wad"
copy ".\maps\E2M3.WAD" "%~2\maps\E2M3.wad"
copy ".\maps\E2M4.WAD" "%~2\maps\E2M4.wad"
copy ".\maps\E2M5.WAD" "%~2\maps\E2M5.wad"
copy ".\maps\E2M6.WAD" "%~2\maps\E2M6.wad"
copy ".\maps\E2M7.WAD" "%~2\maps\E2M7.wad"
copy ".\maps\E2M8.WAD" "%~2\maps\E2M8.wad"
copy ".\maps\E2M9.WAD" "%~2\maps\E2M9.wad"

copy ".\maps\E3M1.WAD" "%~2\maps\E3M1.wad"
copy ".\maps\E3M2.WAD" "%~2\maps\E3M2.wad"
copy ".\maps\E3M3.WAD" "%~2\maps\E3M3.wad"
copy ".\maps\E3M4.WAD" "%~2\maps\E3M4.wad"
copy ".\maps\E3M5.WAD" "%~2\maps\E3M5.wad"
copy ".\maps\E3M6.WAD" "%~2\maps\E3M6.wad"
copy ".\maps\E3M7.WAD" "%~2\maps\E3M7.wad"
copy ".\maps\E3M8.WAD" "%~2\maps\E3M8.wad"
copy ".\maps\E3M9.WAD" "%~2\maps\E3M9.wad"

copy ".\maps\E4M1.WAD" "%~2\maps\E4M1.wad"
copy ".\maps\E4M2.WAD" "%~2\maps\E4M2.wad"
copy ".\maps\E4M3.WAD" "%~2\maps\E4M3.wad"
copy ".\maps\E4M4.WAD" "%~2\maps\E4M4.wad"
copy ".\maps\E4M5.WAD" "%~2\maps\E4M5.wad"
copy ".\maps\E4M6.WAD" "%~2\maps\E4M6.wad"
copy ".\maps\E4M7.WAD" "%~2\maps\E4M7.wad"
copy ".\maps\E4M8.WAD" "%~2\maps\E4M8.wad"
copy ".\maps\E4M9.WAD" "%~2\maps\E4M9.wad"


::Copy Over Patches
::=======================
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
copy ".\patches\sky1.png" "%~2\patches\SKY1.png"
copy ".\patches\sky2.png" "%~2\patches\SKY2.png"
copy ".\patches\sky3.png" "%~2\patches\SKY3.png"
copy ".\patches\sky4.png" "%~2\patches\SKY4.png"
copy ".\patches\sky4.png" "%~2\patches\SKY4.png"
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

::Copy Over Music
::=======================
copy ".\music\d_bunny.mus" "%~2\music\d_bunny.mus"
copy ".\music\d_inter.mus" "%~2\music\d_inter.mus"
copy ".\music\d_intro.mus" "%~2\music\d_intro.mus"
copy ".\music\d_introa.mus" "%~2\music\d_introa.mus"
copy ".\music\d_victor.mus" "%~2\music\d_victor.mus"
copy ".\music\d_e1m1.mus" "%~2\music\d_e1m1.mus"
copy ".\music\d_e1m2.mus" "%~2\music\d_e1m2.mus"
copy ".\music\d_e1m3.mus" "%~2\music\d_e1m3.mus"
copy ".\music\d_e1m4.mus" "%~2\music\d_e1m4.mus"
copy ".\music\d_e1m5.mus" "%~2\music\d_e1m5.mus"
copy ".\music\d_e1m6.mus" "%~2\music\d_e1m6.mus"
copy ".\music\d_e1m7.mus" "%~2\music\d_e1m7.mus"
copy ".\music\d_e1m8.mus" "%~2\music\d_e1m8.mus"
copy ".\music\d_e1m9.mus" "%~2\music\d_e1m9.mus"
copy ".\music\d_e2m1.mus" "%~2\music\d_e2m1.mus"
copy ".\music\d_e2m2.mus" "%~2\music\d_e2m2.mus"
copy ".\music\d_e2m3.mus" "%~2\music\d_e2m3.mus"
copy ".\music\d_e2m4.mus" "%~2\music\d_e2m4.mus"
copy ".\music\d_e2m5.mus" "%~2\music\d_e2m5.mus"
copy ".\music\d_e2m6.mus" "%~2\music\d_e2m6.mus"
copy ".\music\d_e2m7.mus" "%~2\music\d_e2m7.mus"
copy ".\music\d_e2m8.mus" "%~2\music\d_e2m8.mus"
copy ".\music\d_e2m9.mus" "%~2\music\d_e2m9.mus"
copy ".\music\d_e3m1.mus" "%~2\music\d_e3m1.mus"
copy ".\music\d_e3m2.mus" "%~2\music\d_e3m2.mus"
copy ".\music\d_e3m3.mus" "%~2\music\d_e3m3.mus"
copy ".\music\d_e3m4.mus" "%~2\music\d_e3m4.mus"
copy ".\music\d_e3m5.mus" "%~2\music\d_e3m5.mus"
copy ".\music\d_e3m6.mus" "%~2\music\d_e3m6.mus"
copy ".\music\d_e3m7.mus" "%~2\music\d_e3m7.mus"
copy ".\music\d_e3m8.mus" "%~2\music\d_e3m8.mus"
copy ".\music\d_e3m9.mus" "%~2\music\d_e3m9.mus"