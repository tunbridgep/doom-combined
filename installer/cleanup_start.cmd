if exist "%FILE_DHTP%" rmdir /S /Q "%FILE_DHTP%"
if exist "%MAKE_DIR_COMMON%" rmdir /S /Q "%MAKE_DIR_COMMON%"
if exist "%MAKE_DIR_RANDOMISER%" rmdir /S /Q "%MAKE_DIR_RANDOMISER%"
if exist "%MAKE_DIR_ZANDRONUM%" rmdir /S /Q "%MAKE_DIR_ZANDRONUM%"
if exist "%MAKE_DIR_GZDOOM%" rmdir /S /Q "%MAKE_DIR_GZDOOM%"

if exist "%FILE_RANDOM%" del "%FILE_RANDOM%"
if exist "%FILE_GZDOOM%" del "%FILE_GZDOOM%"
if exist "%FILE_ZANDRO%" del "%FILE_ZANDRO%"
