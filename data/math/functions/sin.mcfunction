$execute positioned 0.0 0 0.0 rotated $(d) 0 run tp @e[type=minecraft:marker,limit=1,tag=math-sin] ^ ^ ^$(m)
#$tellraw @p [{"entity":"@e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin]","nbt":"Pos"},{"text":" [$(d)]"}]
execute at @e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin] positioned 0.0 40 0.0 run particle minecraft:block_marker redstone_block ~ ~ ~ 0 0 0 0 1
execute at @e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin] positioned ~ 40 ~ run particle minecraft:block_marker redstone_block ~ ~ ~ 0 0 0 0 1

execute store result storage jad:temp_data print int 1 run data get entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin] Pos[0] 100
#$tellraw @p [{"storage":"jad:temp_data","nbt":"print"},{"text":" [$(d)]"}]

return run data get entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin] Pos[0] 100