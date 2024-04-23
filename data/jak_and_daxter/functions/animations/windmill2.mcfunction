data merge storage jad:temp_data {windmill_rotation:{axis:[1,0,0]}}
execute store result storage jad:temp_data windmill_rotation.angle double 0.02 run scoreboard players get scout_fly_jump jad.timer
data modify entity @e[type=minecraft:item_display,limit=1,sort=nearest,tag=jad.windmill2] transformation.left_rotation set from storage jad:temp_data windmill_rotation 
data merge entity @e[type=minecraft:item_display,limit=1,sort=nearest,tag=jad.windmill2] {interpolation_duration:1,start_interpolation:0}