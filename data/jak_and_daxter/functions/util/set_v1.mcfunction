$data modify entity @e[tag=jad.data,limit=1,sort=nearest,distance=0..5] data.value1 set value $(value)
execute on vehicle run effect give @s minecraft:glowing 5 1 true