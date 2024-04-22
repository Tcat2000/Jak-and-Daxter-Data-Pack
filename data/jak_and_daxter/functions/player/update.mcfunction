execute if score @s jad.player_state matches 0 run gamemode adventure
execute if score @s jad.player_state matches 1 run gamemode spectator

execute store result storage jad:temp_data bossbar.uuid1 int 1 run scoreboard players get @s uuid1
execute store result storage jad:temp_data bossbar.uuid2 int 1 run scoreboard players get @s uuid2
execute store result storage jad:temp_data bossbar.uuid3 int 1 run scoreboard players get @s uuid3
execute store result storage jad:temp_data bossbar.uuid4 int 1 run scoreboard players get @s uuid4

execute if score @s jad.player_state matches 0 run function jak_and_daxter:player/move_to_pos with storage jad:temp_data bossbar