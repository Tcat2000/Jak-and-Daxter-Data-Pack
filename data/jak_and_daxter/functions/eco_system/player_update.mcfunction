execute store result storage jad:temp_data bossbar.value int 1 run scoreboard players get @s jad.eco_value
execute store result storage jad:temp_data bossbar.uuid1 int 1 run scoreboard players get @s uuid1
execute store result storage jad:temp_data bossbar.uuid2 int 1 run scoreboard players get @s uuid2
execute store result storage jad:temp_data bossbar.uuid3 int 1 run scoreboard players get @s uuid3
execute store result storage jad:temp_data bossbar.uuid4 int 1 run scoreboard players get @s uuid4

execute at @s as @e[tag=jad.eco_cluster.green,distance=0..0.5] run function jak_and_daxter:eco_system/add_player_green with storage jad:temp_data bossbar
execute at @s as @e[tag=jad.eco_cluster.blue,distance=0..0.5] run function jak_and_daxter:eco_system/add_player_blue with storage jad:temp_data bossbar
execute at @s as @e[tag=jad.eco_cluster.red,distance=0..0.5] run function jak_and_daxter:eco_system/add_player_red with storage jad:temp_data bossbar
execute at @s as @e[tag=jad.eco_cluster.yellow,distance=0..0.5] run function jak_and_daxter:eco_system/add_player_yellow with storage jad:temp_data bossbar

function jak_and_daxter:eco_system/set_bar with storage jad:temp_data bossbar

function jak_and_daxter:eco_system/render_clusters with storage jad:temp_data bossbar

execute if score @s jad.eco_value matches 1 run function jak_and_daxter:eco_system/remove_player_green with storage jad:temp_data bossbar
execute if score @s jad.eco_value matches 1 run function jak_and_daxter:eco_system/remove_player_blue with storage jad:temp_data bossbar
execute if score @s jad.eco_value matches 1 run function jak_and_daxter:eco_system/remove_player_red with storage jad:temp_data bossbar
execute if score @s jad.eco_value matches 1 run function jak_and_daxter:eco_system/remove_player_yellow with storage jad:temp_data bossbar