#say adding player
$execute on passengers if entity @s[tag=jad.data,nbt={data:{collected_for_players:[{uuid:[I;$(uuid1),$(uuid2),$(uuid3),$(uuid4)]}]}}] run return fail
$execute as @a[nbt={UUID:[I;$(uuid1),$(uuid2),$(uuid3),$(uuid4)]}] run function jak_and_daxter:eco_system/change_color {"color":4}
$scoreboard players add @a[nbt={UUID:[I;$(uuid1),$(uuid2),$(uuid3),$(uuid4)]}] jad.eco_value 100

data modify storage jad:temp_data comp.uuid set value [I;0,0,0,0]
data modify storage jad:temp_data comp.uuid[0] set from storage jad:temp_data bossbar.uuid1
data modify storage jad:temp_data comp.uuid[1] set from storage jad:temp_data bossbar.uuid2
data modify storage jad:temp_data comp.uuid[2] set from storage jad:temp_data bossbar.uuid3
data modify storage jad:temp_data comp.uuid[3] set from storage jad:temp_data bossbar.uuid4
execute on passengers run data modify entity @s data.collected_for_players append from storage jad:temp_data comp