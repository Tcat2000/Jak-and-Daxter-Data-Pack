$execute at @s if score @s jad.player_state matches 0 run tp @e[tag=jad.player_pos,tag=jad.uuid1_$(uuid1),tag=jad.uuid2_$(uuid2),tag=jad.uuid3_$(uuid3),tag=jad.uuid4_$(uuid4)] @s
$execute at @s if score @s jad.player_state matches 0 run tp @e[tag=jad.player_cam,tag=jad.uuid1_$(uuid1),tag=jad.uuid2_$(uuid2),tag=jad.uuid3_$(uuid3),tag=jad.uuid4_$(uuid4)] @s

$execute at @s if score @s jad.player_state matches 1 run spectate @e[tag=jad.player_cam,tag=jad.uuid1_$(uuid1),tag=jad.uuid2_$(uuid2),tag=jad.uuid3_$(uuid3),tag=jad.uuid4_$(uuid4),limit=1] @s