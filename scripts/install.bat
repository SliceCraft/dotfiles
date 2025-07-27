if exist "%HOMEDRIVE%%HOMEPATH%\.gitconfig" del "%HOMEDRIVE%%HOMEPATH%\.gitconfig"
mklink /H "%HOMEDRIVE%%HOMEPATH%\.gitconfig" "..\config\git\.gitconfig"

if exist "%LOCALAPPDATA%\lazygit\config.yml" del "%LOCALAPPDATA%\lazygit\config.yml"
mklink /H "%LOCALAPPDATA%\lazygit\config.yml" "..\config\lazygit\config.yml"

REM Start komorebi setup

if exist "%HOMEDRIVE%%HOMEPATH%\komorebi.json" del "%HOMEDRIVE%%HOMEPATH%\komorebi.json"
mklink /H "%HOMEDRIVE%%HOMEPATH%\komorebi.json" "..\config\komorebi\komorebi.json"

if not exist "%HOMEDRIVE%%HOMEPATH%\.config" mkdir "%HOMEDRIVE%%HOMEPATH%\.config"
if exist "%HOMEDRIVE%%HOMEPATH%\.config\whkdrc" del "%HOMEDRIVE%%HOMEPATH%\.config\whkdrc"
mklink /H "%HOMEDRIVE%%HOMEPATH%\.config\whkdrc" "..\config\komorebi\whkdrc"

komorebic disable-autostart
komorebic enable-autostart --whkd

REM End komorebi setup