@echo off
:: Elevate this script to run as administrator (will prompt UAC if needed)
:: If already elevated, net session returns 0; otherwise non-zero.
>nul 2>&1 net session
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb runAs"
    exit /b
)

chcp 65001 > nul 2>&1
title MagickCMD

:: Language selection (choose once per launch)
echo.
echo Select language / Выберите язык:
echo 1. Русский (RU)
echo 2. English (EN)
set /p LANG_CHOICE=Enter 1 or 2 [1]: 
if "%LANG_CHOICE%"=="" set LANG_CHOICE=1
if "%LANG_CHOICE%"=="1" (
    set MAGICK_LANG=ru
) else (
    set MAGICK_LANG=en
)

echo.
echo ============================================================
echo  MagickCMD - Smart Windows Assistant
echo  Powered by Groq + LLaMA 3.3
echo ============================================================
echo.

echo Checking Python 3.11...
py -3.11 --version > nul 2>&1
if %errorlevel% neq 0 (
    echo      Python 3.11 not found. Installing...
    powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe' -OutFile '%TEMP%\python311.exe'"
    start /wait %TEMP%\python311.exe /quiet InstallAllUsers=0 PrependPath=1
) else (
    echo      Python 3.11 found. OK
)

echo Checking pip...
py -3.11 -m pip --version > nul 2>&1
if %errorlevel% neq 0 (
    echo      Installing pip...
    py -3.11 -m ensurepip --upgrade
)
echo      pip OK

echo Checking requests library...
py -3.11 -c "import requests" > nul 2>&1
if %errorlevel% neq 0 (
    echo      Installing requests...
    py -3.11 -m pip install requests --quiet
)
echo      requests OK

echo.
echo Launching MagickCMD...
echo.

py -3.11 "%~dp0interpreter_bootstrap.py" "%MAGICK_LANG%"

echo.
echo MagickCMD finished.
pause
