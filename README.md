# Документация по установке и запуску скрипта

## Описание

Этот проект предназначен для автоматической генерации документов на основе шаблона в формате `.docx`. Скрипт заполняет шаблон данными из файла `.ods`, заменяя соответствующие плейсхолдеры в документе.

## Структура проекта

- **blank.ods**: Таблица с данными, которые будут подставлены в шаблон.
- **Balvanka.docx**: Шаблон документа с плейсхолдерами.
- **filled/**: Папка, куда будут сохраняться готовые документы.
- **main.py**: Основной Python-скрипт, выполняющий заполнение шаблона.

## Подготовка данных

1. **Откройте файл `blank.ods` и заполните его данными**. Каждая строка должна содержать два столбца:
   - **Первый столбец**: Имя плейсхолдера (например, `Номер договора`, `Дата договора`).
   - **Второй столбец**: Значение, которое нужно подставить на место плейсхолдера.

2. **Плейсхолдеры в шаблоне**:
   - В документе `Balvanka.docx` используйте следующие плейсхолдеры для подстановки значений:
     - Плейсхолдеры оформляются в виде `<<<ИМЯ ПЛЕЙСХОЛДЕРА>>>` (например, `<<<Номер договора>>>`, `<<<Дата договора>>>`).
     - Специальный плейсхолдер `<<<ДС>>>` будет заменен на несколько строк в формате `ДС № *Номер договора*/N`, где `N` — порядковый номер.

## Установка Python и необходимых библиотек

### **Windows**

1. **Установка Python**:
   - Перейдите на [страницу загрузки Python](https://www.python.org/downloads/) и скачайте последнюю версию Python для Windows.
   - Запустите установочный файл и убедитесь, что выбрали опцию "Add Python to PATH" (Добавить Python в PATH).
   - Завершите установку, следуя инструкциям установщика.

2. **Установка необходимых библиотек**:
   - Откройте командную строку (Command Prompt).
   - Установите необходимые библиотеки, выполнив следующие команды:
     ```bash
     pip install python-docx ezodf
     ```

3. **Запуск скрипта**:
   - Перейдите в директорию, где находится файл `main.py`, используя командную строку.
   - Выполните скрипт командой:
     ```bash
     python main.py
     ```

### **macOS**

1. **Установка Python**:
   - macOS обычно уже включает Python. Вы можете проверить его наличие, выполнив команду:
     ```bash
     python3 --version
     ```
   - Если Python не установлен, установите его через [Homebrew](https://brew.sh/). Откройте терминал и выполните:
     ```bash
     brew install python
     ```

2. **Установка необходимых библиотек**:
   - Откройте терминал.
   - Установите необходимые библиотеки, выполнив следующие команды:
     ```bash
     python3 -m pip install --upgrade pip
     python3 -m pip install python-docx ezodf
     ```

3. **Запуск скрипта**:
   - Перейдите в директорию, где находится файл `main.py`, используя терминал.
   - Выполните скрипт командой:
     ```bash
     python3 main.py
     ```

### **Linux**

1. **Установка Python**:
   - Python обычно уже установлен на Linux. Проверьте его наличие, выполнив команду:
     ```bash
     python3 --version
     ```
   - Если Python не установлен, установите его через пакетный менеджер. Например, для Debian/Ubuntu:
     ```bash
     sudo apt-get update
     sudo apt-get install python3 python3-pip
     ```

2. **Установка необходимых библиотек**:
   - Откройте терминал.
   - Установите необходимые библиотеки, выполнив следующие команды:
     ```bash
     python3 -m pip install --upgrade pip
     python3 -m pip install python-docx ezodf
     ```

3. **Запуск скрипта**:
   - Перейдите в директорию, где находится файл `main.py`, используя терминал.
   - Выполните скрипт командой:
     ```bash
     python3 main.py
     ```
