@echo off
setlocal EnableExtensions
set "ROOT=%~dp0"
set "APPDIR=%ROOT%CrimsonDoctor-1.0.3"
set "EXE=%APPDIR%\CrimsonDoctor.exe"
set "REPORT=%ROOT%CrimsonDoctor-startup-report.txt"
(
  echo Crimson Doctor 1.0.3 startup diagnostic helper
  echo Generated: %DATE% %TIME%
  echo.
  echo EXE: %EXE%
  echo APPDIR: %APPDIR%
  echo USERDOMAIN: %USERDOMAIN%
  echo OS: %OS%
  echo PROCESSOR_ARCHITECTURE: %PROCESSOR_ARCHITECTURE%
  echo.
) > "%REPORT%"
if not exist "%EXE%" (
  echo Missing executable: %EXE% >> "%REPORT%"
  type "%REPORT%"
  pause
  exit /b 2
)
start /wait "" "%EXE%"
set "EXITCODE=%ERRORLEVEL%"
(
  echo.
  echo Exit code: %EXITCODE%
  echo.
  echo AppData startup diagnostic tail:
) >> "%REPORT%"
set "APPDATA_LOG=%LOCALAPPDATA%\CrimsonDoctor\startup_diagnostic.log"
if exist "%APPDATA_LOG%" (
  powershell -NoProfile -Command "Get-Content -LiteralPath '%APPDATA_LOG%' -Tail 80" >> "%REPORT%" 2>&1
) else (
  echo No %%LOCALAPPDATA%%\CrimsonDoctor\startup_diagnostic.log found. >> "%REPORT%"
)
echo.
echo Startup report written to:
echo %REPORT%
echo.
type "%REPORT%"
pause
exit /b %EXITCODE%
