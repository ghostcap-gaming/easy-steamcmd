@echo off
setlocal enabledelayedexpansion
color 0A
set "configFile=easysteamcmd-config.txt"
set "steamCmdUrl=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip"
set "steamCmdZip=steamcmd.zip"
set "steamCmdFolder=steamcmd"

for /f "tokens=1* delims==" %%a in (%configFile%) do (
    if "%%a"=="APPID" (
        set appid=%%b
    ) else if "%%a"=="STARTUP_COMMAND" (
        set startupCommand=%%b
    ) else if "%%a"=="AUTO_UPDATE" (
        set autoUpdate=%%b
    ) else if "%%a"=="VALIDATE" (
        set validate=%%b
    ) else if "%%a"=="STEAM_LOGIN" (
        set steamLogin=%%b
    ) else if "%%a"=="STEAM_PASSWORD" (
        set steamPassword=%%b
    ) else if "%%a"=="BETA_BUILD" (
        set betaBuild=%%b
    )
)

if "!startupCommand:~-1!"=="=" (
    set "startupCommand=!startupCommand:~0,-1!"
)

echo.
echo Easy SteamCMD - https://github.com/ghostcap-gaming
echo.
echo Game AppID: %appid%
echo Startup Command: %startupCommand%
echo Auto Update: %autoUpdate%
echo Validate: %validate%
echo Steam Login: %steamLogin%
echo Beta Build: %betaBuild%
echo __________________________________________________________________
echo.

if not exist "%steamCmdFolder%" (
    if not exist "%steamCmdZip%" (
        echo Downloading SteamCMD...
        powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%steamCmdUrl%', '%steamCmdZip%')"
    )
    echo Extracting SteamCMD...
    powershell -Command "Expand-Archive -Path '%steamCmdZip%' -DestinationPath '%steamCmdFolder%'"
)

set "steamCmd=%steamCmdFolder%\steamcmd.exe"

if "%steamLogin%"=="" (
    set loginCmd=+login anonymous
) else (
    set loginCmd=+login %steamLogin% %steamPassword%
)

if "%autoUpdate%"=="1" (
    if "%validate%"=="1" (
        if "%betaBuild%"=="" (
            %steamCmd% %loginCmd% +force_install_dir ../ +app_update %appid% validate +quit
        ) else (
            %steamCmd% %loginCmd% +force_install_dir ../ +app_update %appid% -beta %betaBuild% validate +quit
        )
    ) else (
        if "%betaBuild%"=="" (
            %steamCmd% %loginCmd% +force_install_dir ../ +app_update %appid% +quit
        ) else (
            %steamCmd% %loginCmd% +force_install_dir ../ +app_update %appid% -beta %betaBuild% +quit
        )
    )
)

:startup
%startupCommand%
pause
