@echo off
setlocal enabledelayedexpansion

:: Check if parameter is provided
if "%1"=="" (
    echo Usage: sound [0-100]
    echo Example: sound 50
    exit /b
)

:: Validate input is a number between 0-100
set "vol=%1"
if !vol! lss 0 set "vol=0"
if !vol! gtr 100 set "vol=100"

:: Set volume using PowerShell
powershell -c "(New-Object -ComObject WScript.Shell).SendKeys([char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174 + [char]174)"
powershell -c "$volume = %vol%; $obj = New-Object -ComObject WScript.Shell; for ($i = 0; $i -lt ($volume/2); $i++) { $obj.SendKeys([char]175) }"
echo Volume set to !vol!%%