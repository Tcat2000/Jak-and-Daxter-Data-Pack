$bossbar add jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) {"text":"Eco"}
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) players @a[scores={uuid1=$(uuid1),uuid2=$(uuid2),uuid3=$(uuid3),uuid4=$(uuid4)}]
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) max 200
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) style progress
$bossbar set jad:eco_$(uuid1)$(uuid2)$(uuid3)$(uuid4) visible true