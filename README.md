# Welcome to the world of Minipurge!

Minipurge is an automatic Minecraft Purge/Hunger Games/Fortnite multiplayer world event scheduler.

The latest stable releases can be downloaded here from [Modrinth](https://modrinth.com/datapack/minipurge) or [Curseforge.](https://www.curseforge.com/minecraft/data-packs/minipurge) 

## There are three stages of the event:
Peace; Where PVP is disabled and you can collect resources.
War; PVP is enabled.
Shrink; Where the border shrinks down to spawn and forces all players to fight it out.

The time for each of these stages, the initial border size and the number of lives for each player can be changed easily.

## To set this up on your server:
1. Put this datapack in the datapacks folder of your server world. (I recommend using a world you don't mind trashing).
2. (Optional) Put minipurge add-on flavor datapacks into the datapacks folder to your taste. Found [here](https://modrinth.com/user/JayPyro2000) or [here.](https://www.curseforge.com/members/jaypyro2000/projects)
3. Teleport to a random unexplored area.
4. Run the command:
```
    /function minipurge:start { lives:<value>, border:<value>, peace:<value>, war:<value>, shrink:<value> }
```

    Where each <value> can be set to your liking!

"lives" is the number of lives a player has before going into spectator.
"border" is the size of the starting border.
"peace" is the length of no pvp in minutes.
"war" is the length of enabled pvp in minutes.
"shrink" is the amount of time it takes for the border to shrink to 20 blocks in minutes.

### Warning!! This command will teleport all players and clear their inventories and ender chests!
Put player heads (one at a time) in the chest at spawn to get golden apples!

Other useful commands:
/function minipurge:reset   -  To reset the game.
/function minipurge:help - Displays the help menu.
/function minipurge:pause   -  pauses the event.
/function minipurge:unpause   -  unpauses the event.

Pause and unpause will only work if function-permission-level = 4 or higher.

All other commands are helper functions and don't need to be worried about.

Please send suggestions or comments to: jaypyro2000@gmail.com

## Let the games Begin!