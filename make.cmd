:: set up and declare variables
@echo off
set LIBRARY=%~dp0installer
set MAKE_DIR_COMMON=%~dp0make
set MAKE_DIR_GZDOOM=%~dp0make_gzd
set MAKE_DIR_ZANDRONUM=%~dp0make_zan
set MAKE_DIR_RANDOMISER=%~dp0make_ran
set DIR_IWADS=%~dp0_DOOM_IWAD
set DIR_DHTP=%~dp0_DHTP
set MOD_COMMON=%~dp0installer\common
set MOD_DOOM1=%~dp0installer\doom1
set MOD_DOOM1_COMPLETE=%~dp0installer\doom1_complete
set MOD_THYINTERPIC=%~dp0installer\thyinterpic
set MOD_FREEDOOM1=%~dp0installer\freedoom1
set MOD_FREEDOOM2=%~dp0installer\freedoom2
set MOD_FINALDOOM_TNT=%~dp0installer\tnt
set MOD_FINALDOOM_PLUTONIA=%~dp0installer\plutonia
set MOD_FINALDOOM_COMPLETE=%~dp0installer\finaldoom_complete
set MOD_FREEDOOM_COMPLETE=%~dp0installer\freedoom_complete
set MOD_NRFTL=%~dp0installer\nrftl
set MOD_MASTER=%~dp0installer\master
set MOD_EXTRA=%~dp0installer\romero
set MOD_ROMERO_EPISODE=%~dp0installer\romero_episode
set MOD_SIGIL=%~dp0installer\sigil
set MOD_GZDOOM=%~dp0installer\gzdoom
set MOD_ZANDRO=%~dp0installer\zandro
set MOD_MOC=%~dp0installer\mapsofchaos
set MOD_MOC_COMPLETE=%~dp0installer\mapsofchaos_complete
set MOD_RANDOM=%~dp0installer\randomiser
set TOOL_WADEXT=%~dp0_tools\wadext\wadext.exe
set TOOL_7Z=%~dp0_tools\7-Zip\7z.exe
set FILE_GZDOOM=%~dp0DC_gzdoom.pk7
set FILE_ZANDRO=%~dp0DC_zandro.pk7
set FILE_DHTP=%~dp0DC_dhtp.pk7
set FILE_RANDOM=%~dp0DC_randomiser.pk7

call "%LIBRARY%/cleanup_start.cmd"

::get started
mkdir "%MAKE_DIR_COMMON%"
mkdir "%MAKE_DIR_GZDOOM%"
mkdir "%MAKE_DIR_ZANDRONUM%"
mkdir "%MAKE_DIR_RANDOMISER%"

::set up directories
mkdir "%MAKE_DIR_COMMON%/acs"
mkdir "%MAKE_DIR_COMMON%/flats"
mkdir "%MAKE_DIR_COMMON%/graphics"
mkdir "%MAKE_DIR_COMMON%/patches"
mkdir "%MAKE_DIR_COMMON%/maps"
mkdir "%MAKE_DIR_COMMON%/music"

echo Initialising...

::make main module
call "%MOD_COMMON%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_COMMON%" >nul
call "%MOD_FREEDOOM1%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_FREEDOOM1%" >nul
call "%MOD_FREEDOOM2%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_FREEDOOM2%" >nul
call "%MOD_DOOM1%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_DOOM1%" >nul
call "%MOD_THYINTERPIC%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_THYINTERPIC%" >nul
call "%MOD_SIGIL%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_SIGIL%" >nul
call "%MOD_MOC%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_MOC%" >nul
call "%MOD_FINALDOOM_PLUTONIA%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_FINALDOOM_PLUTONIA%" >nul
call "%MOD_FINALDOOM_TNT%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_FINALDOOM_TNT%" >nul
call "%MOD_NRFTL%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_NRFTL%" >nul
call "%MOD_MASTER%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_MASTER%" >nul
call "%MOD_EXTRA%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_COMMON%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_EXTRA%" >nul

xcopy "%MAKE_DIR_COMMON%\*" "%MAKE_DIR_GZDOOM%\*" /E /Q
xcopy "%MAKE_DIR_COMMON%\*" "%MAKE_DIR_ZANDRONUM%\*" /E /Q
::make gzdoom module
call "%MOD_GZDOOM%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_GZDOOM%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_GZDOOM%" >nul
::make zandro module
call "%MOD_ZANDRO%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_ZANDRONUM%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_ZANDRO%" >nul
::make random module
call "%MOD_RANDOM%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_RANDOMISER%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_RANDOM%" >nul
::make full episode modules
call "%MOD_FINALDOOM_COMPLETE%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_GZDOOM%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_FINALDOOM_COMPLETE%" >nul
call "%MOD_DOOM1_COMPLETE%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_GZDOOM%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_DOOM1_COMPLETE%" >nul
call "%MOD_MOC_COMPLETE%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_GZDOOM%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_MOC_COMPLETE%" >nul
call "%MOD_FREEDOOM_COMPLETE%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_GZDOOM%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_FREEDOOM_COMPLETE%" >nul
call "%MOD_ROMERO_EPISODE%/_section.cmd" "%LIBRARY%" "%MAKE_DIR_GZDOOM%" "%DIR_IWADS%" "%TOOL_WADEXT%" "%MOD_ROMERO_EPISODE%" >nul

::clean up
cd "%~dp0"

::make randomiser module
call "%~dp0_tools/7-Zip/7z.exe" a "%FILE_RANDOM%" "%MAKE_DIR_RANDOMISER%/*"

::make gzdoom module
call "%~dp0_tools/7-Zip/7z.exe" a "%FILE_GZDOOM%" "%MAKE_DIR_GZDOOM%/*"

::make zandro module
call "%~dp0_tools/7-Zip/7z.exe" a "%FILE_ZANDRO%" "%MAKE_DIR_ZANDRONUM%/*"

call "%LIBRARY%/cleanup_end.cmd"

::end of main loop....exit
EXIT /B %ERRORLEVEL%
