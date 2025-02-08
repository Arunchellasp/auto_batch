@echo off
if "%1"=="arun" (
    start chrome --profile-directory="Profile 2"
) else if "%1"=="solinas" (
    start chrome --profile-directory="Profile 1"
) else (
    echo Usage: chrome.bat [arun|solinas]
)
