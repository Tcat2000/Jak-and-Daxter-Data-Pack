execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:lime_concrete"}}] at @s run function jak_and_daxter:summon/eco_vent_green
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:lime_concrete"}}] run kill @s[type=item_frame]

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:blue_concrete"}}] at @s run function jak_and_daxter:summon/eco_vent_blue
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:blue_concrete"}}] run kill @s[type=item_frame]

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:yellow_concrete"}}] at @s run function jak_and_daxter:summon/eco_vent_yellow
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:yellow_concrete"}}] run kill @s[type=item_frame]

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:red_concrete"}}] at @s run function jak_and_daxter:summon/eco_vent_red
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:red_concrete"}}] run kill @s[type=item_frame]

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:lime_concrete_powder"}}] at @s run function jak_and_daxter:summon/eco_cluster_green
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:lime_concrete_powder"}}] run kill @s[type=item_frame]

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:blue_concrete_powder"}}] at @s run function jak_and_daxter:summon/eco_cluster_blue
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:blue_concrete_powder"}}] run kill @s[type=item_frame]

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:yellow_concrete_powder"}}] at @s run function jak_and_daxter:summon/eco_cluster_yellow
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:yellow_concrete_powder"}}] run kill @s[type=item_frame]

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:red_concrete_powder"}}] at @s run function jak_and_daxter:summon/eco_cluster_red
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:red_concrete_powder"}}] run kill @s[type=item_frame]


scoreboard players remove @a[scores={jad.eco_value=1..}] jad.eco_value 1

execute as @e[tag=jad.eco_vent.green] at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":1}
execute as @e[tag=jad.eco_vent.green] at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.green] at @s run particle minecraft:dust 0 1 0 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @e[tag=jad.eco_vent.blue] at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":2}
execute as @e[tag=jad.eco_vent.blue] at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.blue] at @s run particle minecraft:dust 0 0.2 1 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @e[tag=jad.eco_vent.red] at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":3}
execute as @e[tag=jad.eco_vent.red] at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.red] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @e[tag=jad.eco_vent.yellow] at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":4}
execute as @e[tag=jad.eco_vent.yellow] at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.yellow] at @s run particle minecraft:dust 1 1 0 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @a run function jak_and_daxter:eco_system/player_update