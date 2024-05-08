execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:egg"}}] at @s run function jak_and_daxter:summon/orb
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:egg"}}] run kill @s[type=item_frame]

execute as @e[tag=jad.orb] at @s if entity @a[distance=0..1.5] on passengers if entity @s[tag=jad.data] if data entity @s {data:{collected:0}} on vehicle run function jak_and_daxter:orb/collect

execute as @e[tag=jad.orb] on passengers if entity @s[tag=jad.data] store result score @s jad.math_handling run data get entity @s data.last_reset
execute as @e[tag=jad.orb] on passengers if entity @s[tag=jad.data] if score @s jad.math_handling <= reset jad.value run function jak_and_daxter:orb/reset

execute as @e[tag=jad.orb] at @s on passengers if entity @s[tag=jad.data] if data entity @s {data:{collected:1}} on vehicle on passengers if entity @s[tag=jad.render] run data modify entity @s Item.tag.CustomModelData set value 7465685
execute as @e[tag=jad.orb] at @s on passengers if entity @s[tag=jad.data] if data entity @s {data:{collected:0}} on vehicle on passengers if entity @s[tag=jad.render] run data modify entity @s Item.tag.CustomModelData set value 7465694