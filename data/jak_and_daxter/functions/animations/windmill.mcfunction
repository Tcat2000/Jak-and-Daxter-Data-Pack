data merge storage jad:temp_data {windmill_rotation:{axis:[0,0,1]}}
execute store result storage jad:temp_data windmill_rotation.angle double 0.02 run scoreboard players get scout_fly_jump jad.timer
data modify entity @e[type=minecraft:item_display,limit=1,sort=nearest,tag=jad.windmill] transformation.left_rotation set from storage jad:temp_data windmill_rotation 