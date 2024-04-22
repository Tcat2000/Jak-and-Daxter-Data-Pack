$bossbar add jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) {"text":"Eco"}
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) players @a[scores={uuid1=$(uuid1),uuid2=$(uuid2),uuid3=$(uuid3),uuid4=$(uuid4)}]
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) max 400
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) style progress
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) visible true

$summon marker ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["jad.player_pos","jad.uuid1_$(uuid1)","jad.uuid2_$(uuid2)","jad.uuid3_$(uuid3)","jad.uuid4_$(uuid4)"]}
$summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["jad.player_cam","jad.uuid1_$(uuid1)","jad.uuid2_$(uuid2)","jad.uuid3_$(uuid3)","jad.uuid4_$(uuid4)"]}