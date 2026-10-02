@echo off
setlocal enabledelayedexpansion
title Somnath Chatterjee - Portfolio Server Launcher
color 0B

echo ===============================================================================
echo                SOMNATH CHATTERJEE - DEVELOPER PORTFOLIO
echo       Junior Front-End Web Developer ^& BCA Student (RIIT, KNU)
echo ===============================================================================
echo.

:: 1. SETUP ENVIRONMENT & PATHS
echo [1/4] Checking Node.js environment...
set "PATH=C:\Program Files\nodejs;C:\Program Files (x86)\nodejs;%PATH%"
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js was not found in PATH or standard Program Files.
    echo Please install Node.js from https://nodejs.org or check your PATH.
    pause
    exit /b 1
)
for /f "tokens=*" %%v in ('node -v') do set NODE_VER=%%v
echo [OK] Node.js is ready: !NODE_VER!
echo.

:: 2. VERIFY / START MONGODB DATABASE
echo [2/4] Verifying MongoDB Database Service (mongodb://localhost:27017)...
sc query MongoDB >nul 2>nul
if %errorlevel% equ 0 (
    for /f "tokens=3 delims=: " %%s in ('sc query MongoDB ^| findstr "STATE"') do set MONGO_STATE=%%s
    if "!MONGO_STATE!"=="RUNNING" (
        echo [OK] MongoDB Server is already running.
    ) else (
        echo [..] Starting MongoDB Windows Service...
        net start MongoDB
        if %errorlevel% equ 0 (
            echo [OK] MongoDB Server started successfully.
        ) else (
            echo [WARN] Could not start MongoDB service automatically. Trying local port check...
        )
    )
) else (
    echo [INFO] MongoDB Windows service not found. Checking if mongod is running on port 27017...
    netstat -ano | findstr 27017 >nul
    if %errorlevel% equ 0 (
        echo [OK] MongoDB is listening on port 27017.
    ) else (
        echo [WARN] MongoDB service does not appear to be running.
        echo Please ensure MongoDB is started or check your .env.local configuration.
    )
)
echo.

:: 3. SEED DATABASE IF NEEDED
echo [3/4] Initializing Database records (Projects, Skills, Education, Admin User)...
call npm.cmd run seed
if %errorlevel% neq 0 (
    echo [WARN] Seed script encountered a warning or error. Application will use cached fallback data.
)
echo.

:: 4. BUILD / START FRONT-END AND BACK-END APPLICATION
echo [4/4] Starting Full-Stack Application on http://localhost:3000...
echo.
echo -------------------------------------------------------------------------------
echo    FRONT-END:      http://localhost:3000
echo    BACK-END API:   http://localhost:3000/api/projects
echo    ADMIN PORTAL:   http://localhost:3000/admin/login
echo    DATABASE:       mongodb://localhost:27017/somnath_portfolio
echo -------------------------------------------------------------------------------
echo.
echo [INFO] Opening default browser in 3 seconds...
start "" "http://localhost:3000"

:: Launch Next.js production server
npm.cmd start
pause
