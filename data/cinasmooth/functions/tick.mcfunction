#execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target facing ~ ~ ~ run tp @e[type=minecraft:interaction,tag=cinamsmooth.waypoint,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target run data modify entity @e[type=minecraft:interaction,tag=cinasmooth.waypoint,limit=1,sort=nearest] Rotation set from entity @s Rotation

execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s run function cinasmooth:point/calc_render
execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] run data remove entity @s interaction