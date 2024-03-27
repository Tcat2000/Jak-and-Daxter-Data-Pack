$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) value $(value)
$execute if score @s jad.eco_color matches 1 run bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) color green
$execute if score @s jad.eco_color matches 2 run bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) color blue
$execute if score @s jad.eco_color matches 3 run bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) color red
$execute if score @s jad.eco_color matches 4 run bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) color yellow