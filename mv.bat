@echo off
if "%~1"=="" (
    echo Usage: mv source destination
    exit /b
)

if exist "%~1" (
    move /Y "%~1" "%~2"
    echo Moved "%~1" to "%~2"
) else (
    echo "%~1" does not exist.
)
