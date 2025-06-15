@echo off
setlocal

set "source=%LocalAppdata%\Plutonium\1"
set "destination1=%LocalAppdata%\Plutonium\bin"
set "destination2=your_mw3_folder"
set "destination3=your_bo1_folder"
set "launcher=%LocalAppdata%\Plutonium\bin\plutonium-launcher-win32.exe"

xcopy /s /i /y "%source%\*" "%destination1%"
xcopy /s /i /y "%source%\*" "%destination2%"
xcopy /s /i /y "%source%\*" "%destination3%"

:: Lancer l'exécutable
start "" "%launcher%"

endlocal
