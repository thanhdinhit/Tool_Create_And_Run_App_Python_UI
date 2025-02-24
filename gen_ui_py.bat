@echo off
echo Choose which version of PyQt to use:
echo 1. PyQt6
echo 2. PyQt5
set /p choice=Enter your choice (1 or 2):

if "%choice%"=="1" (
    set pyqt=PyQt6
) else if "%choice%"=="2" (
    set pyqt=PyQt5
) else (
    echo Invalid choice. Please run the script again and choose 1 or 2.
    exit /b
)

:: Nhập tên đầy đủ của file input (.ui)
set /p input=Enter the full path of the input UI file (including the .ui extension): 
:: Nhập tên file đầu ra (không cần .py)
set /p output=Enter the name of the output Python file (without the .py extension):

echo Running: python -m %pyqt%.uic.pyuic -o %output%.py -x "%input%"
python -m %pyqt%.uic.pyuic -o %output%.py -x "%input%"

pause