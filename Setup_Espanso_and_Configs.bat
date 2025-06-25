@echo off
TITLE Deeptree Espanso Setup
REM Check for Administrator privileges
net session >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Please run this file as Administrator.^
    pause
    exit /b 1
)
REM Install Chocolatey if not already installed
choco -v >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Installing Chocolatey...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
) else (
    echo Chocolatey is already installed.
)
REM Install Espanso using Chocolatey
choco install espanso -y
REM Copy configuration files to the Espanso folder
set ESPANSO_CONFIG=%APPDATA%\espanso
if not exist "%ESPANSO_CONFIG%" mkdir "%ESPANSO_CONFIG%"
robocopy "%~dp0" "%ESPANSO_CONFIG%" /E /XF Setup_Espanso_and_Configs.bat .gitignore
REM Restart Espanso to apply changes
espanso restart
echo Setup complete.
pause
