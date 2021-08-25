@echo off

set JAVA_BIN_DIR=.\jre\bin

set PATH=%JAVA_BIN_DIR%;%PATH%
set JV=
java -version > jv0.dat 2>&1
find /i "java version" jv0.dat > jv.dat
for /f "tokens=3" %%A in (jv.dat) do (
    for /f "tokens=1,2 delims=." %%B in ("%%~A") do (
        set JV=%%B.%%C
    )
)
del /q jv*.dat > nul 2>&1
echo java version=[%JV%]

rem set JAVA_OPTIONS=
