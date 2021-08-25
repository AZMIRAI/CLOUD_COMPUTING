@echo off
title setupPasswd.bat
pushd %~dp0
setLocal EnableDelayedExpansion
call jenv.bat
set LIB_DIR=.\lib
set LIB_JDBC_DIR=%LIB_DIR%\jdbc
set CLSPATH=.
for %%f in (%LIB_DIR%\*.jar) do (set CLSPATH=!CLSPATH!;%%f)
for %%f in (%LIB_JDBC_DIR%\*.jar) do (set CLSPATH=!CLSPATH!;%%f)
java -Dfile.encoding=UTF-8 %JAVA_OPTIONS% -classpath "%CLSPATH%" ext.tl.PasswdSetup %*
pause
