execute as @e[tag=jad.jump_pad] at @s run particle minecraft:falling_water ~ ~1 ~ 0.4 0.6 0.4 1 10 normal @a[scores={jad.eco_color=2,jad.eco_value=1..}]
$execute as @e[tag=jad.jump_pad] at @s as @a[scores={jad.eco_color=2,jad.eco_value=1..},distance=0..1] run effect give @s minecraft:jump_boost 1 $(strength) true
execute as @e[tag=jad.jump_pad] at @s as @a[distance=1..3] run effect clear @s