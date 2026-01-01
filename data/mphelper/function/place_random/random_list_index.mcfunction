$execute store result score #list_size variables run data get storage $(list)
execute store result score #list_index variables run random value 0..2147483646
scoreboard players operation #list_index variables %= #list_size variables
return run scoreboard players get #list_index variables