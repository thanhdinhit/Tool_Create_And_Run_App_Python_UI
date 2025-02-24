@echo off
echo Choose which PyQt tools to install:
echo 1. pyqt6-tools
echo 2. pyqt5-tools
set /p choice=Enter your choice (1 or 2):

if "%choice%"=="1" (
    echo Installing pyqt6-tools...
    pip install pyqt6-tools
) else if "%choice%"=="2" (
    echo Installing pyqt5-tools...
    pip install pyqt5-tools
) else (
    echo Invalid choice. Please run the script again and choose 1 or 2.
)

pause