
execute on passengers if entity @s[tag=jad_orb-data] run function jak_and_daxter:orb/score_remove with entity @s data.JAD.collectable
$data modify entity @s data.JAD.collectable.zone set value $(zone)
execute on passengers if entity @s[tag=jad_orb-data] run function jak_and_daxter:orb/score_add with entity @s data.JAD.collectable