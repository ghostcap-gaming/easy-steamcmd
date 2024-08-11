# Easy SteamCMD

Easy SteamCMD is specifically tailored for beginners and quick game server setup. All you need to do is set 2 config options, run it, and Easy SteamCMD does the rest.

- Automatically downloads and extracts SteamCMD, saving time and effort.
- Easily configure your game's startup command.
- Checks if your server requires an update when starting and updates it accordingly.
- No need for advanced scripting knowledge or for “Gurus” to release server software for your game.

## How To Install

1. Download Easy SteamCMD from [here](https://github.com/ghostcap-gaming/easy-steamcmd/archive/refs/heads/main.zip).
2. Place `easysteamcmd.bat` and `easysteamcmd-config.txt` into a folder where you want to install the game server.
3. Edit `easysteamcmd-config.txt` with your game server `appid` and startup command or copy a pre-made config from the `game-configs` folder.
4. Double-click `easysteamcmd.bat` and watch the magic.

## Supported Games
We have a bunch of pre-made config files you can use [here](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs). Simply look for the game you want and then overwrite `easysteamcmd-config.txt` with the new config. 

| Game                | Download Link         |
|---------------------|-----------------------|
| 7 Days To Die        | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/blob/main/game-configs/7-days-to-die/)         |
| Conan Exiles        | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/blob/main/game-configs/conan-exiles/)         |
| Counter-Strike 1.6 | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/counter-strike-1-6)         |
| Counter-Strike: Source | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/counter-strike-source)         |
| Counter-Strike 2 | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/counter-strike-2)         |
| DayZ | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/dayz)         |
| Deadlock | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/deadlock)         |
| Enshrouded          | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/enshrouded)         |
| Left 4 Dead 2       | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/left-4-dead-2)         |
| Left 4 Dead         | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/left-4-dead)         |
| Palworld            | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/palworld)         |
| Quake Live            | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/quake-live)         |
| Satisfactory            | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/satisfactory)         |
| Soldat            | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/soldat)         |
| Sons of the Forest            | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/sons-of-the-forest)         |
| Soulmask            | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/soulmask)         |
| Sven Co-op          | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/sven-co-op)         |
| Team Fortress 2          | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/team-fortress-2)         |
| V Rising            | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/v-rising)         |
| Valheim             | [Download](https://github.com/ghostcap-gaming/easy-steamcmd/tree/main/game-configs/valheim)         |

To manually change the game you will need to get the APPID from sites like [SteamDB](https://steamdb.info/) and you will need to add your own startup command. You can usually find these online from any SteamCMD guide or from simply naming it the .exe file once the game downloads.

## Config Explained

For Easy SteamCMD, we use one simple config file called `easysteamcmd-config.txt` for setting what game you want to install as well as the startup command.

| Config Parameter    | Explanation                                                                                           |
|---------------------|-------------------------------------------------------------------------------------------------------|
| **APPID**           | The App ID for your game server. You can find these on sites like SteamDB. You can find a bunch of these pre-made here. |
| **STARTUP_COMMAND** | The command that is used to start the game server. This is normally the .exe that is located once the game has finished downloading. You can find a bunch of these pre-made here. |
| **AUTO_UPDATE**     | This allows you to toggle auto updates on or off by changing it to 1 or 0. |
| **VALIDATE**     | Validates all the files on the server. Only use this if you need to restore modified files back to their original state. 1 is on, 0 is off. |
| **STEAM_LOGIN/STEAM_PASSWORD** | **(OPTIONAL)** Some games **require** you to use your Steam account to verify you own the game. Simply enter your Steam username and password here. |
| **BETA_BUILD** | **(OPTIONAL)** If you want to revert to a newer or older version of the game you can directly set the build id here. Also known as a branch. |

