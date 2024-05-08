$execute unless score @s jad.eco_color matches $(color) run scoreboard players set @s jad.eco_value 0
function jak_and_daxter:eco_system/reset_clusters
$scoreboard players set @s jad.eco_color $(color)

scoreboard players set num1 jad.value_compare 1
scoreboard players set num2 jad.value_compare 2
scoreboard players set num3 jad.value_compare 3
scoreboard players set num4 jad.value_compare 4

$execute unless score num1 jad.value_compare matches $(color) run function jak_and_daxter:eco_system/remove_player_green with storage jad:temp_data bossbar
$execute unless score num2 jad.value_compare matches $(color) run function jak_and_daxter:eco_system/remove_player_blue with storage jad:temp_data bossbar
$execute unless score num3 jad.value_compare matches $(color) run function jak_and_daxter:eco_system/remove_player_red with storage jad:temp_data bossbar
$execute unless score num4 jad.value_compare matches $(color) run function jak_and_daxter:eco_system/remove_player_yellow with storage jad:temp_data bossbar