#execute unless block ~ ~-1.2 ~ air if block ~ ~-0.75 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.024

execute if block ~ ~-0.56 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.024
execute if block ~ ~-0.44 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.3
execute if block ~ ~-0.32 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.4
execute if block ~ ~-0.2 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute if block ~ ~-0.08 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute if block ~ ~0.04 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute if block ~ ~0.16 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute if block ~ ~0.28 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.4
execute if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.8

execute if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run return 0
execute if block ~ ~-2 ~ #minecraft:slabs[type=bottom] run return 0

execute unless block ~ ~-1.06 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.024
execute unless block ~ ~-0.94 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.3
execute unless block ~ ~-0.82 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.4
execute unless block ~ ~-0.7 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute unless block ~ ~-0.58 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute unless block ~ ~-0.46 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute unless block ~ ~-0.34 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute unless block ~ ~-0.22 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.5
execute unless block ~ ~-0.1 ~ air run data modify entity @s[type=minecraft:armor_stand] Motion[1] set value 0.8