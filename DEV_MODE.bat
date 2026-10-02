@echo off
setlocal enabledelayedexpansion
title Somnath Chatterjee - Development Server (Hot Reload)
color 0A

echo ===============================================================================
echo            SOMNATH CHATTERJEE - DEVELOPER PORTFOLIO (DEV MODE)
echo                   Fast Refresh ^& Hot Reloading Active
echo ===============================================================================
echo.

set "PATH=C:\Program Files\nodejs;C:\Program Files (x86)\nodejs;%PATH%"

echo [1/3] Verifying MongoDB Server...
sc query MongoDB >nul 2>nul
if %errorlevel% equ 0 (
    net start MongoDB >nul 2>nul
)
echo [OK] Database service verified.
echo.

echo [2/3] Checking Seed Data...
call npm.cmd run seed
echo.

echo [3/3] Starting Next.js Dev Server on http://localhost:3000...
echo.
echo    Front-End ^& Back-End API: http://localhost:3000
echo    Admin Dashboard:           http://localhost:3000/admin
echo.
start "" "http://localhost:3000"

npm.cmd run dev
pause
