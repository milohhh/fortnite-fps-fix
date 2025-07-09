@echo off
title Fortnite FPS Boost Tool - @milo
cls

:: Set console to green text on black
color 0A

:: HEADER
echo =============================================================
echo                 FORTNITE FPS BOOST SCRIPT
echo                       powered by
color 0C
echo                       @millimiloo
color 0A
echo =============================================================
echo.

:: STEP 1: Kill background apps
echo [@milo] Closing background processes...
taskkill /F /IM OneDrive.exe >nul 2>&1
taskkill /F /IM Discord.exe >nul 2>&1
taskkill /F /IM EpicGamesLauncher.exe >nul 2>&1
taskkill /F /IM Steam.exe >nul 2>&1
timeout /t 1 >nul
echo.

:: STEP 2: Clean temp & Fortnite cache
echo [@milo] Cleaning temp files and Fortnite config...
del /q /f %temp%\* >nul 2>&1
del /q /f C:\Windows\Prefetch\* >nul 2>&1
rd /s /q "%localappdata%\FortniteGame\Saved\Config\WindowsClient" >nul 2>&1
mkdir "%localappdata%\FortniteGame\Saved\Config\WindowsClient" >nul 2>&1
timeout /t 2 >nul
echo.

:: STEP 3: Disable Game Bar & DVR
echo [@milo] Disabling Game Bar and DVR...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f >nul
echo.

:: STEP 4: Set High Performance plan
echo [@milo] Setting High Performance power plan...
powercfg -setactive SCHEME_MIN >nul 2>&1
echo.

:: STEP 5: Create high-priority Fortnite launcher
echo [@milo] Creating high-priority Fortnite launcher...
set "FORTNITE_EXE=C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"
echo @echo off > "%userprofile%\Desktop\Launch_Fortnite_@milo.bat"
echo start "" /high "%FORTNITE_EXE%" >> "%userprofile%\Desktop\Launch_Fortnite_@milo.bat"
echo.

:: STEP 6: Network optimization
echo [@milo] Optimizing network stack...
netsh interface tcp set global autotuning=disabled >nul
netsh interface tcp set global rss=enabled >nul
timeout /t 1 >nul
echo.

:: FINISH
color 0A
echo =============================================================
echo           OPTIMIZATION COMPLETE LAUNCH VIA DESKTOP
echo =============================================================
echo.
pause
exit
