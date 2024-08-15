@echo off
cd /d "%~dp0"

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Установка Python...
    powershell -Command "Start-Process msiexec -ArgumentList '/i https://www.python.org/ftp/python/3.9.0/python-3.9.0-amd64.exe /quiet InstallAllUsers=1 PrependPath=1' -Wait"
)

python -m ensurepip --upgrade

pip install --upgrade pip
pip install python-docx ezodf

echo Установка завершена!
pause
