@echo off
setlocal enabledelayedexpansion

color 0A

set "configFile=easysteamcmd-config.txt"
set "steamCmdUrl=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip"
set "steamCmdZip=steamcmd.zip"
set "steamCmdFolder=steamcmd"

for /f "tokens=1,2 delims==" %%a in (%configFile%) do (
    if "%%a"=="APPID" (
        set appid=%%b
    ) else if "%%a"=="STARTUP_COMMAND" (
        set startupCommand=%%b
    ) else if "%%a"=="AUTO_UPDATE" (
        set autoUpdate=%%b
    ) else if "%%a"=="STEAM_LOGIN" (
        set steamLogin=%%b
    ) else if "%%a"=="STEAM_PASSWORD" (
        set steamPassword=%%b
    )
)

:: Display the current configuration
echo.
echo Easy SteamCMD - https://github.com/ghostcap-gaming
echo.
echo Game AppID: %appid%
echo Startup Command: %startupCommand%
echo Auto Update: %autoUpdate%
echo Steam Login: %steamLogin%
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
    %steamCmd% %loginCmd% +force_install_dir ../  +app_update %appid% +quit
) else (
    color 0E
    choice /C YN /M "Do you want to update the server?"
    if errorlevel 2 goto startup
    if errorlevel 1 (
        choice /C YN /M "Do you want to validate the files during the update?"
        if errorlevel 2 (
            %steamCmd% %loginCmd% +force_install_dir ../ +app_update %appid% +quit
        ) else if errorlevel 1 (
            %steamCmd% %loginCmd% +force_install_dir ../ +app_update %appid% validate +quit
        )
    )
)

:startup
color 0A
%startupCommand%
pause
