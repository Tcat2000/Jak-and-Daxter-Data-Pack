execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.05 0.05 0.05 1 5 normal
execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s rotated as @s unless loaded ^ ^ ^1 run kill @s
execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s rotated as @s run tp @s ^ ^ ^0.2
#execute store result score rand jad-value_compare run random roll 0..4

execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s rotated as @s unless block ^ ^ ^1 air if block ^1 ^ ^1 air run tp @s ^0.2 ^ ^
execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s rotated as @s unless block ^ ^ ^1 air if block ^-1 ^ ^1 air run tp @s ^0.2 ^ ^
execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s rotated as @s unless block ^ ^ ^1 air if block ^1 ^ ^1 air run tp @s ^0.2 ^ ^
execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s rotated as @s unless block ^ ^ ^1 air if block ^1 ^ ^1 air run tp @s ^0.2 ^ ^

execute as @e[type=minecraft:marker,tag=jad.eco_projectile] at @s rotated as @s unless block ~ ~ ~ air run kill @s