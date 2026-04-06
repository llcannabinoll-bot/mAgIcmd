# mAgIcmd — Умный помощник для Windows automation / Smart assistant for Windows automation

## Готово к использованию / Ready to use

Используйте на свой страх и риск — ИИ может неверно понять задачу и повредить систему или данные. — Use at your own risk — AI may misinterpret tasks and damage your system or data.
Автор не несёт ответственности за возможные последствия. — The author is not responsible for any consequences.
Формулируйте задачи просто, точно и без двусмысленностей. — State tasks simply, precisely, and without ambiguity.

## Запуск / Launch

Файл: mAgIcmd.bat — File: mAgIcmd.bat
Win + R → cmd → Enter → перетащите mAgIcmd.bat в окно CMD. — Win + R → cmd → Enter → drag mAgIcmd.bat into the CMD window.

Автоматически выполняется: — Automatic steps:
1. Проверка Python 3.11, при необходимости установка. — Checks Python 3.11 and installs it if missing.
2. Установка зависимостей. — Installs dependencies.
3. Запуск интерактивного помощника. — Launches the interactive assistant.

После запуска можно сразу ставить задачи. — After launch, you can start assigning tasks immediately.

## Использование / Usage

1. Запустите mAgIcmd.bat. — Run mAgIcmd.bat.
2. Введите Groq API key при первом запуске. — Enter the Groq API key on first launch.
3. Пишите задачи на любом языке. — Write tasks in any language.
4. Выход: exit или Ctrl + C. — Exit: exit or Ctrl + C.

## Примеры / Examples

Создай папку Backup на рабочем столе и скопируй туда все документы. — Create a Backup folder on my desktop and copy all documents there.
Найди все .log файлы за последние 3 дня и удали их. — Find all .log files from the last 3 days and delete them.
Покажи процессы, которые потребляют больше всего памяти. — Show the processes using the most memory.
Создай .bat файл для бэкапа папки Projects. — Create a .bat file for backing up the Projects folder.

## Структура файлов / File structure

project_root/
├── mAgIcmd.bat       launcher / запуск
├── run.py            main script / основной скрипт
├── Base_run.py       alternative script / альтернативный скрипт
├── .magick_key       stored API key / сохранённый API ключ
└── README.md         this file / этот файл

## API ключ Groq / Groq API key

https://console.groq.com/keys
Create API Key → скопировать gsk_ → вставить при первом запуске
Create API Key → copy gsk_ → paste on first launch

Ключ сохраняется в файл .magick_key, повторный ввод не требуется. — The key is saved to .magick_key, so you do not need to enter it again.

## Прямой запуск Python / Direct Python launch

PowerShell:
.venv/Scripts/python.exe run.py

Обычный запуск:
python run.py

## Системные требования / System requirements

Windows 7 или новее. — Windows 7 or newer.
Python 3.11+
Интернет-соединение для Groq API. — Internet connection for Groq API.
Около 500 MB свободного места. — About 500 MB of free space.

## Если что-то не работает / Troubleshooting

BAT не запускается — BAT does not start
PowerShell (admin) → .\mAgIcmd.bat

Python не найден — Python not found
Установить вручную с https://python.org — install manually

Ошибка API ключа — API key error
Удалить файл .magick_key → ввести заново

## Поддержка / Support

Спросите в любом ИИ-чате: Grok, Claude, DeepSeek и т.д. — Ask in any AI chat: Grok, Claude, DeepSeek, etc.

## Суть / Summary

Вы формулируете задачу — система выполняет. — You describe the task — the system executes it.
