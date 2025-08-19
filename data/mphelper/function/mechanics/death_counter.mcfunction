#Copyright JayPyro2000 2025. All Rights Reserved.
$execute as @a[scores={deaths=$(lives)}] run function mphelper:mechanics/spectate
schedule function mphelper:mechanics/death_dispatcher 1s