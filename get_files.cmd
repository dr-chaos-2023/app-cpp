@echo off
set "rootDir=%cd%"
for /R "%rootDir%" %%F in (*.cpp) do (
    set "relativePath=%%~pnxF"
    setlocal enabledelayedexpansion
    echo !relativePath:%rootDir%\=!
    endlocal
)