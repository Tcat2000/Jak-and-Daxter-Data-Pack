$scoreboard players set x1 math.temp_data $(a)

$scoreboard players set x2 math.temp_data $(b)

scoreboard players set div math.temp_data 1

scoreboard players operation x1 math.temp_data *= div math.temp_data

$scoreboard players set mul math.temp_data $(per)

scoreboard players operation x1 math.temp_data *= mul math.temp_data

scoreboard players set nmul math.temp_data 1000
scoreboard players operation nmul math.temp_data -= mul math.temp_data

scoreboard players operation x2 math.temp_data *= div math.temp_data

scoreboard players operation x2 math.temp_data *= nmul math.temp_data

scoreboard players operation x1 math.temp_data += x2 math.temp_data

$execute store result storage $(output) $(path).x$(id) float 1 run scoreboard players get x1 math.temp_data