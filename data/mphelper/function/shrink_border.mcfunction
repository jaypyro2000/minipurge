#Copyright JayPyro2000 2025. All Rights Reserved.
$worldborder set 20 $(shrink)

# Change bossbar
bossbar set minipurge:timerbar color red
$bossbar set minipurge:timerbar max $(shrink)
$bossbar set minipurge:timerbar value $(shrink)
bossbar set minipurge:timerbar name {"text":"Border Shrinking","color":"red"}
$scoreboard players set #countdown variables $(shrink)

title @a title {"text":"The border is now shrinking!",  "bold":false, "italic":true, "color":"red"}
execute as @e[tag=center_loc,limit=1] run tellraw @a [{"text":"Border Shrinking to: "},{"nbt":"Pos[0]","entity":"@s"},{"text":" "},{"nbt":"Pos[1]","entity":"@s"},{"text":" "},{"nbt":"Pos[2]","entity":"@s"}]
$schedule function minipurge:dispatcher $(endgame)s