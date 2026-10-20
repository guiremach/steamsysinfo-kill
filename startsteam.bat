@echo off
title Debloating Steam


echo ========================================================
echo   Starting Steam
echo ========================================================
echo.

cd "C:\Program Files (x86)\Steam"

echo [1/3] Starting Steam.exe
:: Starting Steam
start "" "C:\Program Files (x86)\Steam\Steam.exe"
timeout /t 2 /nobreak >nul

echo [2/3] Killing Steam.exe and steamsysinfo.exe
TASKKILL /F /IM steam.exe /T
TASKKILL /F /IM steamsysinfo.exe /T

echo Waiting 3 seconds
timeout /t 3 /nobreak >nul

echo [3/3] Starting Steam.exe AGAIN
start "" "C:\Program Files (x86)\Steam\Steam.exe"


echo [4/4] Killing steamsysinfo.exe
timeout /t 2 /nobreak >nul
TASKKILL /F /IM steamsysinfo.exe /T

echo [4/4] Killing steamsysinfo.exe
timeout /t 2 /nobreak >nul
TASKKILL /F /IM steamsysinfo.exe /T

echo.
echo ========================================================
echo   Process completed!
echo ========================================================
timeout /t 4 /nobreak >nul
