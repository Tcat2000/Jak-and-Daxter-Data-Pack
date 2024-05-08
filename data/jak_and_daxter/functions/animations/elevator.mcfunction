data merge storage jad:temp_data {elevator_rotation:{axis:[0,0,1]}}
execute store result storage jad:temp_data elevator_rotation.angle double -0.01 run scoreboard players get windmill_time jad.timing
execute as @e[type=minecraft:item_display,sort=nearest,tag=jad.elevator_wheel] run data modify entity @s transformation.left_rotation set from storage jad:temp_data elevator_rotation 
execute as @e[type=minecraft:item_display,sort=nearest,tag=jad.elevator_wheel] run data merge entity @s {interpolation_duration:1,start_interpolation:0}