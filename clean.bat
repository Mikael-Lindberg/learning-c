@echo off
REM
if not exist "bin\" (
    echo "bin" folder not found.
    pause
    exit /b
)

echo Deleting all files in the "bin" folder...
del /F /Q "bin\*.*"
echo Deletion complete.
