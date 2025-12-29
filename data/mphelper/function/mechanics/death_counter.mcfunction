#Copyright JayPyro2000 2025. All Rights Reserved.

#Puts players with deaths=lives into spectator mode or kicks them and calls itself again.
$execute as @a[scores={deaths=$(lives)}] if score #kick variables matches 0 run function mphelper:mechanics/spectate
$execute as @a[scores={deaths=$(lives)}] if score #kick variables matches 1 run function mphelper:mechanics/kick
schedule function mphelper:mechanics/death_dispatcher 1s