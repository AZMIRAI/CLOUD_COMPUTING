@echo off
title uninstallService.bat
pushd %~dp0
cd
MCSAgentSvc.exe /UnregServer
if not "%ERRORLEVEL%" == "0" goto ERROR
goto OK

:OK
echo.
echo 'Agent Service' ���� ���� ����.
echo.
goto QUIT

:ERROR
echo.
echo 'Agent Service' ���� ���� ���� (%ERRORLEVEL%) [������ ����, ���� ���� Ȯ��] (��������: 'sc delete MCSAgentSvc')
echo.
goto QUIT

:QUIT
pause
