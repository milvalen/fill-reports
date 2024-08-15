@echo off
cd /d "%~dp0"

py --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Установка Python...
    powershell -Command "Start-Process msiexec -ArgumentList '/i https://www.python.org/ftp/python/3.9.0/python-3.9.0-amd64.exe /quiet InstallAllUsers=1 PrependPath=1' -Wait"
)

py -m ensurepip --upgrade >nul 2>&1
if %errorlevel% neq 0 (
    echo Установка pip...
    py -m ensurepip --default-pip
)

py -m pip install --upgrade pip

py -m pip install python-docx ezodf

echo Установка завершена!
pause
