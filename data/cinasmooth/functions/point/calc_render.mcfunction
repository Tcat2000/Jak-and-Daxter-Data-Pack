execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target run data modify storage cinasmooth:temp_data position.x1 set from entity @s Pos[0]
execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target run data modify storage cinasmooth:temp_data position.y1 set from entity @s Pos[1]
execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target run data modify storage cinasmooth:temp_data position.z1 set from entity @s Pos[2]
execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target run data modify storage cinasmooth:temp_data position.x2 set from entity @e[type=minecraft:interaction,tag=cinasmooth.waypoint,limit=1,sort=nearest] Pos[0]
execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target run data modify storage cinasmooth:temp_data position.y2 set from entity @e[type=minecraft:interaction,tag=cinasmooth.waypoint,limit=1,sort=nearest] Pos[1]
execute as @e[type=minecraft:interaction,tag=cinasmooth.waypoint] at @s on target run data modify storage cinasmooth:temp_data position.z2 set from entity @e[type=minecraft:interaction,tag=cinasmooth.waypoint,limit=1,sort=nearest] Pos[2]

execute store result storage cinasmooth:temp_data position.x1 int 1 run data get storage cinasmooth:temp_data position.x1 1
execute store result storage cinasmooth:temp_data position.y1 int 1 run data get storage cinasmooth:temp_data position.y1 1
execute store result storage cinasmooth:temp_data position.z1 int 1 run data get storage cinasmooth:temp_data position.z1 1
execute store result storage cinasmooth:temp_data position.x2 int 1 run data get storage cinasmooth:temp_data position.x2 1
execute store result storage cinasmooth:temp_data position.y2 int 1 run data get storage cinasmooth:temp_data position.y2 1
execute store result storage cinasmooth:temp_data position.z2 int 1 run data get storage cinasmooth:temp_data position.z2 1

execute if data entity @s {interaction:{}} store result entity @s Fire int 1 run function math:dist with storage cinasmooth:temp_data position

data modify storage cinasmooth:temp_data rotation.d set from entity @s[type=minecraft:interaction] Rotation[0]

execute store result storage cinasmooth:temp_data rotation.m float 0.1 run data get entity @s[type=minecraft:interaction] Fire 1
execute store result storage cinasmooth:temp_data render.mag float 0.1 run data get entity @s[type=minecraft:interaction] Fire 1
execute store result storage cinasmooth:temp_data render.dirX float 0.01 run function math:sin with storage cinasmooth:temp_data rotation
execute store result storage cinasmooth:temp_data render.dirZ float 0.01 run function math:cos with storage cinasmooth:temp_data rotation

data modify storage cinasmooth:temp_data rotation.d set from entity @s[type=minecraft:interaction] Rotation[1]

data merge storage cinasmooth:temp_data {fl:{"a":0}}
execute store result storage cinasmooth.temp_data fl.b float 1 run data get storage cinasmooth:temp_data render.dirX 1
execute store result storage cinasmooth.temp_data fl.per float 1 run data get storage cinasmooth:temp_data render.dirY 1
execute store result storage cinasmooth:temp_data render.dirX float 0.001 run function math:flerpn with storage math:temp_data fl

execute store result storage cinasmooth.temp_data fl.b float 1 run data get storage cinasmooth:temp_data render.dirY 1
execute store result storage cinasmooth.temp_data fl.per float 1 run data get storage cinasmooth:temp_data render.dirY 1
execute store result storage cinasmooth:temp_data render.dirX float 0.001 run function math:flerpn with storage math:temp_data fl

execute store result storage cinasmooth:temp_data render.dirY float 0.01 run function math:sin with storage cinasmooth:temp_data rotation
execute store result storage cinasmooth:temp_data render.ndirX float 0.001 run data get storage cinasmooth:temp_data render.dirX -1000
execute store result storage cinasmooth:temp_data render.ndirY float 0.001 run data get storage cinasmooth:temp_data render.dirY -1000
execute store result storage cinasmooth:temp_data render.ndirZ float 0.001 run data get storage cinasmooth:temp_data render.dirZ -1000

function cinasmooth:point/render with storage cinasmooth:temp_data render