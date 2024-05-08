execute store result score motionX jad-math.handling on vehicle run data get entity @s Motion[0] 100
execute store result score motionZ jad-math.handling on vehicle run data get entity @s Motion[2] 100
execute store result storage minecraft:macro d float 1 run data get entity @s Rotation[0]
data merge storage minecraft:macro {m:0.2}
#tellraw @a [{"score":{"name":"motionX","objective":"jad-math.handling"}},{"text":" "},{"score":{"name":"motionZ","objective":"jad-math.handling"}}]
execute store result score addX jad-math.handling on vehicle run function math:sin with storage minecraft:macro
execute store result score addZ jad-math.handling on vehicle run function math:cos with storage minecraft:macro
scoreboard players operation motionX jad-math.handling += addX jad-math.handling
scoreboard players operation motionZ jad-math.handling += addZ jad-math.handling
execute on vehicle store result entity @s Motion[2] double 0.01 run scoreboard players get motionZ jad-math.handling
execute on vehicle store result entity @s Motion[0] double 0.01 run scoreboard players get motionX jad-math.handling
#tellraw @a [{"score":{"name":"addX","objective":"jad-math.handling"}},{"text":" "},{"score":{"name":"addZ","objective":"jad-math.handling"}}]
#tellraw @a [{"score":{"name":"motionX","objective":"jad-math.handling"}},{"text":" "},{"score":{"name":"motionZ","objective":"jad-math.handling"}}]