@echo off
setlocal


set "source=%LocalAppdata%\Plutonium\1"
set "destination1=%LocalAppdata%\Plutonium\bin"
set "destination2=ur_game_folder_location"
set "launcher=%LocalAppdata%\Plutonium\bin\plutonium-launcher-win32.exe"


if not exist "%source%" (
    echo Le répertoire source %source% n'existe pas.
    exit /b
)


if not exist "%destination1%" (
    echo Le répertoire de destination1 %destination1% n'existe pas. Le créer...
    mkdir "%destination1%"
)


if not exist "%destination2%" (
    echo Le répertoire de destination2 %destination2% n'existe pas. Le créer...
    mkdir "%destination2%"
)


xcopy /s /i /y "%source%\*" "%destination1%"


xcopy /s /i /y "%source%\*" "%destination2%"

:: Lancer l'exécutable
start "" "%launcher%"

endlocal