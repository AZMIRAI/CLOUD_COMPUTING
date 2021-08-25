@echo off
title uninstallService.bat
pushd %~dp0
cd
MCSAgentSvc.exe /UnregServer
if not "%ERRORLEVEL%" == "0" goto ERROR
goto OK

:OK
echo.
echo 'Agent Service' 서비스 제거 성공.
echo.
goto QUIT

:ERROR
echo.
echo 'Agent Service' 서비스 제거 실패 (%ERRORLEVEL%) [관리자 권한, 기존 서비스 확인] (수동삭제: 'sc delete MCSAgentSvc')
echo.
goto QUIT

:QUIT
pause
