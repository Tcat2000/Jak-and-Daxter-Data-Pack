execute store result storage jad:temp_data platform_rotation.d double -0.5 run scoreboard players get windmill_time jad.timing
data modify storage jad:temp_data platform_rotation.m set value 2.8f
data modify storage jad:temp_data platform_rotation.pos set value [0.0f,0.0f,2.0f]

execute store result storage jad:temp_data platform_rotation.pos[0] float -0.01 run function math:sin with storage jad:temp_data platform_rotation
execute store result storage jad:temp_data platform_rotation.pos[1] float -0.01 run function math:cos with storage jad:temp_data platform_rotation

data merge entity @e[limit=1,sort=nearest,type=minecraft:item_display,tag=jad.elevator_platform2] {start_interpolation:0,interpolation_duration:1}

data modify entity @e[limit=1,sort=nearest,type=minecraft:item_display,tag=jad.elevator_platform2] transformation.translation set from storage jad:temp_data platform_rotation.pos