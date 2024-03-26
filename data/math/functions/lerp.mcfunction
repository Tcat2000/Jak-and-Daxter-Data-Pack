$scoreboard players set x1 math.temp_data $(x1)
$scoreboard players set y1 math.temp_data $(y1)
$scoreboard players set z1 math.temp_data $(z1)

$scoreboard players set x2 math.temp_data $(x2)
$scoreboard players set y2 math.temp_data $(y2)
$scoreboard players set z2 math.temp_data $(z2)

scoreboard players set div math.temp_data 1

scoreboard players operation x1 math.temp_data *= div math.temp_data
scoreboard players operation y1 math.temp_data *= div math.temp_data
scoreboard players operation z1 math.temp_data *= div math.temp_data

$scoreboard players set mul math.temp_data $(per)

scoreboard players operation x1 math.temp_data *= mul math.temp_data
scoreboard players operation y1 math.temp_data *= mul math.temp_data
scoreboard players operation z1 math.temp_data *= mul math.temp_data

scoreboard players set nmul math.temp_data 1000
scoreboard players operation nmul math.temp_data -= mul math.temp_data

scoreboard players operation x2 math.temp_data *= div math.temp_data
scoreboard players operation y2 math.temp_data *= div math.temp_data
scoreboard players operation z2 math.temp_data *= div math.temp_data

scoreboard players operation x2 math.temp_data *= nmul math.temp_data
scoreboard players operation y2 math.temp_data *= nmul math.temp_data
scoreboard players operation z2 math.temp_data *= nmul math.temp_data

scoreboard players operation x1 math.temp_data += x2 math.temp_data
scoreboard players operation y1 math.temp_data += y2 math.temp_data
scoreboard players operation z1 math.temp_data += z2 math.temp_data

$execute store result storage $(output) $(path).x$(id) float 1 run scoreboard players get x1 math.temp_data
$execute store result storage $(output) $(path).y$(id) float 1 run scoreboard players get y1 math.temp_data
$execute store result storage $(output) $(path).z$(id) float 1 run scoreboard players get z1 math.temp_data