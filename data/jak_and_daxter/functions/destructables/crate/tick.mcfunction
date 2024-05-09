execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:chest"}}] at @s run function jak_and_daxter:summon/crate
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:chest"}}] run kill @s[type=item_frame]
