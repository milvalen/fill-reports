#!/bin/bash

cd "$(dirname "$0")"

if ! command -v python3 &> /dev/null
then
    echo "Python не установлен. Установка Python..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # Для macOS используем Homebrew для установки Python
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        brew install python
    else
        # Для Linux (Debian/Ubuntu)
        sudo apt-get update
        sudo apt-get install -y python3 python3-pip
    fi
fi

python3 -m pip install --upgrade pip
python3 -m pip install python-docx ezodf

echo "Установка завершена!"
