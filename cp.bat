@echo off
if "%~1"=="" (
    echo Usage: cp source destination
    exit /b
)

if exist "%~1" (
    xcopy /E /I /Y "%~1" "%~2"
    echo Copied "%~1" to "%~2"
) else (
    echo "%~1" does not exist.
)