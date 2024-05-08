execute store result storage jad:temp_data particle.d double 5 run scoreboard players get windmill_time jad.timing
data modify storage jad:temp_data particle.m set value 2.8f
data modify storage jad:temp_data particle.pos set value [0.0f,0.0f,2.0f]

execute store result storage jad:temp_data particle.pos0 float -0.01 run function math:sin with storage jad:temp_data particle
execute store result storage jad:temp_data particle.pos1 float -0.01 run function math:cos with storage jad:temp_data particle

function jak_and_daxter:animations/particle with storage jad:temp_data particle