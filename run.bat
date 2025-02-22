@echo off
REM
if "%~1"=="" (
    echo Usage: %0 source_file
    exit /b 1
)

REM
set BIN=bin

REM
if not exist "%BIN%" mkdir "%BIN%"

REM
for %%F in ("%~1") do set NAME=%%~nF

REM
cl "%~1" /Fo"%BIN%\%NAME%.obj" /Fe"%BIN%\%NAME%.exe"

REM
if errorlevel 1 (
    echo Compilation failed.
    exit /b 1
)

echo Running %NAME%.exe...
"%BIN%\%NAME%.exe"
