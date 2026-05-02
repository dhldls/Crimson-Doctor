@echo off
setlocal
cd /d "%~dp0"
echo Crimson Doctor startup helper > CrimsonDoctor-startup-report.txt
echo Started: %DATE% %TIME% >> CrimsonDoctor-startup-report.txt
echo Folder: %CD% >> CrimsonDoctor-startup-report.txt
echo. >> CrimsonDoctor-startup-report.txt
CrimsonDoctor.exe
set EXITCODE=%ERRORLEVEL%
echo. >> CrimsonDoctor-startup-report.txt
echo Exit code: %EXITCODE% >> CrimsonDoctor-startup-report.txt
echo Finished: %DATE% %TIME% >> CrimsonDoctor-startup-report.txt
echo.
echo Crimson Doctor exited with code %EXITCODE%.
echo Report written to CrimsonDoctor-startup-report.txt
pause
exit /b %EXITCODE%
