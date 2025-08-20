#Copyright JayPyro2000 2025. All Rights Reserved.

# Set up center location
summon marker ~ ~ ~ {Tags:["center_loc"]}

# Store arguments as scoreboard variables
scoreboard objectives add variables dummy
$scoreboard players set #peace variables $(peace)
$scoreboard players set #war variables $(war)
$scoreboard players set #shrink variables $(shrink)

# Set the endgame to occur 5 minutes before the world stops shrinking.
$scoreboard players set #endgame variables $(shrink)
execute if score #shrink variables matches 5.. run scoreboard players remove #endgame variables 5

# Is used later to determine when to put players in spectator.
$scoreboard players set #lives variables $(lives)
scoreboard players remove #lives variables 1

# Reset the master dispatcher.
scoreboard players set #master_dispatcher variables 1

# Transfer to NBT storage
$data modify storage minipurge:variables border set value $(border)
$data modify storage minipurge:variables lives set value $(lives)
execute store result storage minipurge:variables peace int 60 run scoreboard players get #peace variables
execute store result storage minipurge:variables war int 60 run scoreboard players get #war variables
execute store result storage minipurge:variables shrink int 60 run scoreboard players get #shrink variables
execute store result storage minipurge:variables endgame int 60 run scoreboard players get #endgame variables

# Execute the boot sequence. 
schedule function mphelper:setup/boot 1t