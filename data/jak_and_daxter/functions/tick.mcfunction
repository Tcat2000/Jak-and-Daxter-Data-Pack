execute as @e[tag=!jad.init] at @s run function jak_and_daxter:player/init
execute store result score Game.SelectedGame jad.value_compare run data get storage jad:game_data SelectedGame
function jak_and_daxter:collectables/orb_tickall
function jak_and_daxter:zoomer/tick
function jak_and_daxter:eco_system/tick
function jak_and_daxter:eco_system/yellow_eco/tick
function jak_and_daxter:collectables/orb/tick
function jak_and_daxter:collectables/power_cell/tick
function jak_and_daxter:destructables/crate/tick
function jak_and_daxter:animations/tick
function jak_and_daxter:npc/tick
execute as @a run function jak_and_daxter:player/tick
execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:barrier"}}] at @s as @e[distance=0..0.4] run function jak_and_daxter:util/kill_all
scoreboard players add windmill_time jad.timing 1