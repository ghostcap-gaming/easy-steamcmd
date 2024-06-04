# Easy SteamCMD

Easy SteamCMD is designed to simplify the process of setting up and managing game servers using SteamCMD, specifically tailored for beginners and quick server setup. All you need to do is set 2 config options, run it, and Easy SteamCMD does the rest.

- Automatically downloads and extracts SteamCMD, saving time and effort.
- Easily configure your game's startup command.
- Checks if your server requires an update when starting and updates it accordingly.
- No need for advanced scripting knowledge or for “Gurus” to release server software for your game.

## Usage

1. Download Easy SteamCMD from [here](https://github.com/ghostcap-gaming/easy-steamcmd/archive/refs/heads/main.zip).
2. Place `easysteamcmd.bat` and `easysteamcmd-config.txt` into a folder where you want to install the game server.
3. Edit `easysteamcmd-config.txt` with your game server `appid` and startup command.
4. Double-click `easysteamcmd.bat` and watch the magic.

## Config Explained

For Easy SteamCMD, we use one simple config file called `easysteamcmd-config.txt` for setting what game you want to install as well as the startup command.

### APPID

The App ID for your game server. You can find these on sites like [SteamDB](https://steamdb.info/). You can find a bunch of these pre-made [here](#).

**Example:**
- `APPID=730` for CS2
- `APPID=3017310` for Soulmask

### STARTUP_COMMAND

The command that is used to start the game server. This is normally the `.exe` that is located once the game has finished downloading. You can find a bunch of these pre-made [here](#).

**Example:**
- STARTUP_COMMAND=WSServer.exe Level01_Main -server %* -log -UTF8Output -MULTIHOME=0.0.0.0 -EchoPort=18888 -forcepassthrough

### AUTO_UPDATE

This allows you to toggle auto updates on or off by changing it to `1` or `0`. If it's set to `0` you will have a chance to disable validation too. This is good if you have modified the game files.

### STEAM_LOGIN/STEAM_PASSWORD

Some games require you to use your Steam account to verify you own the game. Simply enter your Steam username and password here.
