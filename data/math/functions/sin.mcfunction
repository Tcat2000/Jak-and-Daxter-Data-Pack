$execute positioned 0.0 0 0.0 rotated $(d) 0 run tp @e[type=minecraft:marker,limit=1,tag=math-sin] ^ ^ ^$(m)
execute at @e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin] positioned 0 40 0 run particle minecraft:block_marker redstone_block ~ ~ ~ 0 0 0 0 1
execute at @e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin] positioned ~ 40 ~ run particle minecraft:block_marker redstone_block ~ ~ ~ 0 0 0 0 1
return run data get entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=math-sin] Pos[0] 100