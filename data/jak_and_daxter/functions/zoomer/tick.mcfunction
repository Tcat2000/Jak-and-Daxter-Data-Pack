execute as @a[tag=jad-mount] run ride @s mount @e[tag=jad-ridable,limit=1,sort=nearest]
execute as @a[tag=jad-mount] run tag @s remove jad-mount
execute as @a at @s if predicate jak_and_daxter:sneaking if entity @e[tag=jad-ridable,distance=0..2] run tag @s add jad-mount
execute as @a at @s on vehicle on passengers if score @s[type=player] jad.right_click matches 1.. run function jak_and_daxter:zoomer/forward
scoreboard players reset @a jad.right_click
execute as @e[tag=jad-zoomer] at @s run function jak_and_daxter:zoomer/hover