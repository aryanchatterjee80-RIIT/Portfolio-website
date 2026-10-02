@echo off
TITLE Somnath Chatterjee Portfolio - Vercel Online Deployment
COLOR 0B
SETLOCAL EnableDelayedExpansion

:: Ensure Node and Global NPM Tools (Vercel) are on PATH
SET "PATH=C:\Program Files\nodejs;%APPDATA%\npm;%PATH%"

CD /D "%~dp0"

echo ==============================================================================
echo           SOMNATH CHATTERJEE - PORTFOLIO VERCEL ONLINE HOSTING
echo ==============================================================================
echo.
echo  Working Directory : %CD%
echo  Node.js Version   : 
call node -v
echo  Vercel CLI Version: 
call vercel --version
echo.
echo ==============================================================================

:: If arguments passed, execute directly
if not "%~1"=="" (
    echo [EXEC] Running: vercel %*
    call vercel %*
    goto end
)

:menu
echo.
echo Select an option:
echo.
echo   [1] Deploy Production to Vercel (Live URL: vercel --prod)
echo   [2] Deploy Preview / Staging to Vercel (vercel)
echo   [3] Login to Vercel Account (vercel login)
echo   [4] Link Local Project to Vercel (vercel link)
echo   [5] Pull Environment Variables from Vercel (vercel env pull)
echo   [6] Open Vercel Web Dashboard in Browser
echo   [7] Open Interactive CMD with Vercel Ready
echo   [8] Exit
echo.
set /p choice="Enter your choice (1-8): "

if "%choice%"=="1" goto deploy_prod
if "%choice%"=="2" goto deploy_preview
if "%choice%"=="3" goto login
if "%choice%"=="4" goto link_proj
if "%choice%"=="5" goto pull_env
if "%choice%"=="6" goto open_dash
if "%choice%"=="7" goto open_cmd
if "%choice%"=="8" goto end

echo [ERROR] Invalid choice. Please enter a number between 1 and 8.
goto menu

:deploy_prod
echo.
echo ==============================================================================
echo  DEPLOYING DIRECTLY TO VERCEL PRODUCTION (LIVE)...
echo ==============================================================================
echo.
call vercel --prod
echo.
echo [DONE] Deployment process finished.
pause
goto menu

:deploy_preview
echo.
echo ==============================================================================
echo  DEPLOYING PREVIEW BUILD TO VERCEL...
echo ==============================================================================
echo.
call vercel
echo.
echo [DONE] Preview deployment finished.
pause
goto menu

:login
echo.
echo ==============================================================================
echo  LOGGING IN TO VERCEL CLI...
echo ==============================================================================
echo.
echo Follow the browser prompt or email verification to link your Vercel account.
call vercel login
echo.
pause
goto menu

:link_proj
echo.
echo ==============================================================================
echo  LINKING PROJECT TO VERCEL...
echo ==============================================================================
echo.
call vercel link
echo.
pause
goto menu

:pull_env
echo.
echo ==============================================================================
echo  PULLING ENVIRONMENT VARIABLES FROM VERCEL...
echo ==============================================================================
echo.
call vercel env pull .env.production.local
echo.
pause
goto menu

:open_dash
echo Opening Vercel Dashboard in your default browser...
start https://vercel.com/dashboard
goto menu

:open_cmd
echo.
echo Launching Command Prompt with Vercel pre-loaded...
echo Type 'vercel --help' or 'vercel --prod' to deploy anytime.
echo.
cmd /k "title Vercel CLI Console && vercel --version"
goto menu

:end
echo.
echo Exiting Vercel Deployment Manager.
exit /b 0
