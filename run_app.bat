@echo off
set /p script_name=Enter the name of the Python script (without .py extension):

:: Check if the input already ends with .py, if not, append .py
if not "%script_name:~-3%"==".py" (
    set script_name=%script_name%.py
)

python %script_name%
pause