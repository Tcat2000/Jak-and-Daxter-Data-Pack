scoreboard players add scout_fly_jump jad.timer 1

execute if data storage jad:scout_fly_jump {value:0..} store result storage jad:scout_fly_jump d int 1 run scoreboard players get scout_fly_jump jad.timer
execute if data storage jad:scout_fly_jump {value:0..} store result storage jad:scout_fly_jump value int 1 run function math:sin with storage jad:scout_fly_jump
execute if data storage jad:scout_fly_jump {value:0..} as @e[tag=jad.scout_fly_hitbox] at @s run function jak_and_daxter:scout_fly/set_pos with storage jad:scout_fly_jump