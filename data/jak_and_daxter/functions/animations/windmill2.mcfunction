data merge storage jad:temp_data {windmill_rotation:{axis:[1,0,0]}}
execute store result storage jad:temp_data windmill_rotation.angle double 0.02 run scoreboard players get windmill_time jad.timing
execute as @e[type=minecraft:item_display,sort=nearest,tag=jad.windmill2] run data modify entity @s transformation.left_rotation set from storage jad:temp_data windmill_rotation 
execute as @e[type=minecraft:item_display,sort=nearest,tag=jad.windmill2] run data merge entity @s {interpolation_duration:1,start_interpolation:0}