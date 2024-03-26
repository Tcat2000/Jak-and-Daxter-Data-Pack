$scoreboard players set x1 math.temp_data $(x1)
$scoreboard players set y1 math.temp_data $(y1)
$scoreboard players set z1 math.temp_data $(z1)

$scoreboard players set x2 math.temp_data $(x2)
$scoreboard players set y2 math.temp_data $(y2)
$scoreboard players set z2 math.temp_data $(z2)

scoreboard players operation x1 math.temp_data -= x2 math.temp_data
scoreboard players operation y1 math.temp_data -= y2 math.temp_data
scoreboard players operation z1 math.temp_data -= z2 math.temp_data

scoreboard players set n1 math.temp_data -1

execute if score x1 math.temp_data matches ..0 run scoreboard players operation x1 math.temp_data *= n1 math.temp_data
execute if score y1 math.temp_data matches ..0 run scoreboard players operation y1 math.temp_data *= n1 math.temp_data
execute if score z1 math.temp_data matches ..0 run scoreboard players operation z1 math.temp_data *= n1 math.temp_data

scoreboard players set t math.temp_data 0

scoreboard players operation t math.temp_data += x1 math.temp_data
scoreboard players operation t math.temp_data += y1 math.temp_data
scoreboard players operation t math.temp_data += z1 math.temp_data


execute store result storage math:temp_data return.t int 10 run scoreboard players get t math.temp_data
return run data get storage math:temp_data return.t 0.7