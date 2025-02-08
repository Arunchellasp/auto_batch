@echo off
setlocal enabledelayedexpansion

:: Check if parameter is provided
if "%1"=="" (
    echo Usage: bright [0-100]
    echo Example: bright 50
    exit /b
)

:: Validate input is a number between 0-100
set "bright=%1"
if !bright! lss 0 set "bright=0"
if !bright! gtr 100 set "bright=100"

:: Set brightness
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,!bright!)
echo Brightness set to !bright!%%