execute if entity @s[tag=jad.init] if entity @s[type=!player] run return fail

execute store result score @s uuid1 run data get entity @s UUID[0]
execute store result score @s uuid2 run data get entity @s UUID[1]
execute store result score @s uuid3 run data get entity @s UUID[2]
execute store result score @s uuid4 run data get entity @s UUID[3]
execute store result storage jad:temp_data bossbar.uuid1 int 1 run scoreboard players get @s uuid1
execute store result storage jad:temp_data bossbar.uuid2 int 1 run scoreboard players get @s uuid2
execute store result storage jad:temp_data bossbar.uuid3 int 1 run scoreboard players get @s uuid3
execute store result storage jad:temp_data bossbar.uuid4 int 1 run scoreboard players get @s uuid4

function jak_and_daxter:player/init/create_bossbar with storage jad:temp_data bossbar

tag @s add jad.init

return 1