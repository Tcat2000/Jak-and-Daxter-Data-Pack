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

execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:sea_lantern"}}] at @s run function jak_and_daxter:summon/jump_pad
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:sea_lantern"}}] run kill @s[type=item_frame]


scoreboard players remove @a[scores={jad.eco_value=1..}] jad.eco_value 1

execute as @e[tag=jad.eco_vent.green] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":1}
execute as @e[tag=jad.eco_vent.green] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.green] at @s if function jak_and_daxter:eco_system/eco_vent_check run particle minecraft:dust 0 1 0 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @e[tag=jad.eco_vent.blue] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":2}
execute as @e[tag=jad.eco_vent.blue] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.blue] at @s if function jak_and_daxter:eco_system/eco_vent_check run particle minecraft:dust 0 0.2 1 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @e[tag=jad.eco_vent.red] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":3}
execute as @e[tag=jad.eco_vent.red] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.red] at @s if function jak_and_daxter:eco_system/eco_vent_check run particle minecraft:dust 1 0 0 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @e[tag=jad.eco_vent.yellow] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run function jak_and_daxter:eco_system/change_color {"color":4}
execute as @e[tag=jad.eco_vent.yellow] if function jak_and_daxter:eco_system/eco_vent_check at @s as @a[distance=0..0.5] run scoreboard players set @s jad.eco_value 400
execute as @e[tag=jad.eco_vent.yellow] at @s if function jak_and_daxter:eco_system/eco_vent_check run particle minecraft:dust 1 1 0 1 ~ ~ ~ .2 1.1 0.2 1 25 force

execute as @a run function jak_and_daxter:eco_system/player_update

execute as @e[tag=jad.jump_pad] run function jak_and_daxter:eco_system/jump_pad_tick

execute as @e[tag=jad.eco_vent.green] on passengers if entity @s[tag=jad.data] if data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465681
execute as @e[tag=jad.eco_vent.green] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465682
execute as @e[tag=jad.eco_vent.green] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle unless function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465683

execute as @e[tag=jad.eco_vent.blue] on passengers if entity @s[tag=jad.data] if data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465681
execute as @e[tag=jad.eco_vent.blue] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465682
execute as @e[tag=jad.eco_vent.blue] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle unless function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465683

execute as @e[tag=jad.eco_vent.red] on passengers if entity @s[tag=jad.data] if data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465681
execute as @e[tag=jad.eco_vent.red] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465682
execute as @e[tag=jad.eco_vent.red] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle unless function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465683

execute as @e[tag=jad.eco_vent.yellow] on passengers if entity @s[tag=jad.data] if data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465681
execute as @e[tag=jad.eco_vent.yellow] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle if function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465682
execute as @e[tag=jad.eco_vent.yellow] on passengers if entity @s[tag=jad.data] unless data entity @s {data:{value1:0}} on vehicle unless function jak_and_daxter:eco_system/eco_vent_check on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.tag.CustomModelData set value 7465683

execute as @a[scores={jad.eco_color=2,jad.eco_value=20..}] run effect give @s minecraft:speed 1 0 true
execute as @a[scores={jad.eco_color=3,jad.eco_value=20..}] run effect give @s minecraft:strength 1 1 true