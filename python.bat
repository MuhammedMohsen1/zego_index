@echo off
setlocal EnableDelayedExpansion

set pyexe=python.exe
set port=8000
set dirpath=%cd%

tasklist /FI "IMAGENAME eq %pyexe%" 2>NUL | find /I /N "%pyexe%">NUL
if "%ERRORLEVEL%"=="0" (
    echo Python is already running. Please close it before starting the server.
) else (
    start "" "!pyexe!" -m http.server !port! --directory "!dirpath!"
)


