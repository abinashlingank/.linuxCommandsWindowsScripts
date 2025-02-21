@echo off
if "%~1"=="" (
    echo Usage: rm file_or_folder
    exit /b
)

if exist "%~1" (
    if exist "%~1\*" (
        rd /s /q "%~1"
        echo Directory "%~1" removed.
    ) else (
        del /f /q "%~1"
        echo File "%~1" removed.
    )
) else (
    echo "%~1" does not exist.
)