
# TODO: Optimize border using sqrt.
#scoreboard players operation #players_squared variables = #player_count variables
#scoreboard players operation #players_squared variables *= #player_count variables
#execute store result score #border variables run function mphelper:math/sqrt {input_score:"#players_squared variables"}

# For the center player count each player gets 160,000 square blocks.
execute if score #player_count variables matches ..5 run scoreboard players set #border variables 692
execute if score #player_count variables matches 6..10 run scoreboard players set #border variables 1131
execute if score #player_count variables matches 11..15 run scoreboard players set #border variables 1442
execute if score #player_count variables matches 16..20 run scoreboard players set #border variables 1697
execute if score #player_count variables matches 21..25 run scoreboard players set #border variables 1918
execute if score #player_count variables matches 26..30 run scoreboard players set #border variables 2116
execute if score #player_count variables matches 31..35 run scoreboard players set #border variables 2297
execute if score #player_count variables matches 36..40 run scoreboard players set #border variables 2465
execute if score #player_count variables matches 41..45 run scoreboard players set #border variables 2622
execute if score #player_count variables matches 46..50 run scoreboard players set #border variables 2771
execute if score #player_count variables matches 51..55 run scoreboard players set #border variables 2912
execute if score #player_count variables matches 56..60 run scoreboard players set #border variables 3046
execute if score #player_count variables matches 61..65 run scoreboard players set #border variables 3174
execute if score #player_count variables matches 66..70 run scoreboard players set #border variables 3298
execute if score #player_count variables matches 71..75 run scoreboard players set #border variables 3417
execute if score #player_count variables matches 76..80 run scoreboard players set #border variables 3532
execute if score #player_count variables matches 81..85 run scoreboard players set #border variables 3644
execute if score #player_count variables matches 86..90 run scoreboard players set #border variables 3752
execute if score #player_count variables matches 91..95 run scoreboard players set #border variables 3857
execute if score #player_count variables matches 96..100 run scoreboard players set #border variables 3959