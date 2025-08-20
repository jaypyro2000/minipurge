#Copyright JayPyro2000 2025. All Rights Reserved.

# Runs the appropriate mechanic based on the current stage.
execute if score #master_dispatcher variables matches 1 run function mphelper:mechanics/war with storage minipurge:variables
execute if score #master_dispatcher variables matches 2 run function mphelper:mechanics/shrink with storage minipurge:variables
execute if score #master_dispatcher variables matches 3 run function mphelper:mechanics/endgame with storage minipurge:variables

# Updates the current stage.
scoreboard players add #master_dispatcher variables 1