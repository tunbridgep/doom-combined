echo Cleaning up...

if exist "%FILE_DHTP%" rmdir /S /Q "%FILE_DHTP%"
if exist "%MAKE_DIR_COMMON%" rmdir /S /Q "%MAKE_DIR_COMMON%"
if exist "%MAKE_DIR_RANDOMISER%" rmdir /S /Q "%MAKE_DIR_RANDOMISER%"
if exist "%MAKE_DIR_ZANDRONUM%" rmdir /S /Q "%MAKE_DIR_ZANDRONUM%"
if exist "%MAKE_DIR_GZDOOM%" rmdir /S /Q "%MAKE_DIR_GZDOOM%"

::delete wadext folders
if exist "%DIR_IWADS%/doom1" rmdir /S /Q "%DIR_IWADS%/doom1"
if exist "%DIR_IWADS%/freedoom1" rmdir /S /Q "%DIR_IWADS%/freedoom1"
if exist "%DIR_IWADS%/freedoom2" rmdir /S /Q "%DIR_IWADS%/freedoom2"
if exist "%DIR_IWADS%/master" rmdir /S /Q "%DIR_IWADS%/master"
if exist "%DIR_IWADS%/moc" rmdir /S /Q "%DIR_IWADS%/moc"
if exist "%DIR_IWADS%/nrftl" rmdir /S /Q "%DIR_IWADS%/nrftl"
if exist "%DIR_IWADS%/plutonia" rmdir /S /Q "%DIR_IWADS%/plutonia"
if exist "%DIR_IWADS%/romero" rmdir /S /Q "%DIR_IWADS%/romero"
if exist "%DIR_IWADS%/sigil" rmdir /S /Q "%DIR_IWADS%/sigil"
if exist "%DIR_IWADS%/thyinterpic" rmdir /S /Q "%DIR_IWADS%/thyinterpic"
if exist "%DIR_IWADS%/tnt" rmdir /S /Q "%DIR_IWADS%/tnt"
