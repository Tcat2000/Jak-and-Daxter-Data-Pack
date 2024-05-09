execute store result score last_reset jad.math_handling run scoreboard players get reset jad.value
scoreboard players add last_reset jad.math_handling 1
execute store result entity @s data.last_reset int 1.000000001 run scoreboard players get last_reset jad.math_handling

data modify entity @s data.collected set value 0
#execute on passengers if entity @s[tag=jad.data] run data modify entity @s data.collected set value 0