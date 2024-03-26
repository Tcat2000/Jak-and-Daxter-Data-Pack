#$say scheduling $(next)
execute unless entity @e[tag=jad.cinamatic_camera] run function jak_and_daxter:cinamatic/summon
$execute as @e[tag=jad.cinamatic_camera,limit=1,sort=nearest] at @s run data merge entity @s {teleport_duration:$(time)}
$execute as @e[tag=jad.cinamatic_camera,limit=1,sort=nearest] at @s run tp @s $(x) $(y) $(z) $(yaw) $(pitch)
$schedule function $(next) $(time)t append