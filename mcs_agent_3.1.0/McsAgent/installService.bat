@echo off
title installService.bat
pushd %~dp0
cd
setLocal EnableDelayedExpansion
call jenv.bat
set LIB_DIR=.\lib
set CLSPATH=.
for %%f in (%LIB_DIR%\*.jar) do (set CLSPATH=!CLSPATH!;%%f)
java -Dfile.encoding=UTF-8 -classpath "%CLSPATH%" ext.AgentService
set /P MCS_AGENT_CMD= < macl.dat
del /q macl.dat > nul 2>&1
MCSAgentSvc.exe /Service /port=12999 /agent="McsAgentJ.exe" /cmd="%MCS_AGENT_CMD%"
if not "%ERRORLEVEL%" == "0" goto ERROR
goto OK

:OK
echo.
echo 'Agent Service' ���� ��ġ ����.
echo.
goto QUIT

:ERROR
echo.
echo 'Agent Service' ���� ��ġ ����. (%ERRORLEVEL%) [������ ����, ���� ���� Ȯ��]
echo.
goto QUIT

:QUIT
pause
