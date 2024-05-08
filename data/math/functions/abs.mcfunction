$scoreboard players set abs jad-math.handling $(in)
scoreboard players set n1 jad-math.handling -1
execute if score abs jad-math.handling matches ..0 run scoreboard players operation abs jad-math.handling *= n1 jad-math.handling
return run scoreboard players get abs jad-math.handling