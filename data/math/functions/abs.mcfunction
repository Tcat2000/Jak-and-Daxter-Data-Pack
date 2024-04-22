$scoreboard players set abs jad-math_handling $(in)
scoreboard players set n1 jad-math_handling -1
execute if score abs jad-math_handling matches ..0 run scoreboard players operation abs jad-math_handling *= n1 jad-math_handling
return run scoreboard players get abs jad-math_handling