@echo off
setlocal


set "source=%LocalAppdata%\Plutonium\1"
set "destination1=%LocalAppdata%\Plutonium\bin"
set "destination2=ur_game_folder_location"
set "launcher=%LocalAppdata%\Plutonium\bin\plutonium-launcher-win32.exe"


if not exist "%source%" (
    echo %LocalAppdata%\Plutonium\1 does not exist
    exit /b
)


if not exist "%destination1%" (
    echo the location %destination1% does not exist
    
)


if not exist "%destination2%" (
    echo the location destination2 %destination2% does not exist
)


xcopy /s /i /y "%source%\*" "%destination1%"


xcopy /s /i /y "%source%\*" "%destination2%"

:: Lancer l'exécutable
start "" "%launcher%"

endlocal
