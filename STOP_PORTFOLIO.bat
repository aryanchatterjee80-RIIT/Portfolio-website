@echo off
title Stop Portfolio Server
color 0C

echo ===============================================================================
echo                STOPPING PORTFOLIO SERVER (PORT 3000)
echo ===============================================================================
echo.

for /f "tokens=5" %%a in ('netstat -aon ^| findstr :3000 ^| findstr LISTENING') do (
    echo Stopping process ID %%a on port 3000...
    taskkill /F /PID %%a >nul 2>nul
)

echo [OK] All portfolio servers on port 3000 have been stopped.
echo.
timeout /t 3 >nul
exit /b 0
