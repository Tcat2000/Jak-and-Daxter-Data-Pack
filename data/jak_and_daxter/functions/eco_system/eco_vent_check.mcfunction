execute on passengers if entity @s[tag=jad.data] store result storage jad:temp_data channel_check.channel int 1 run data get entity @s data.value1 1
execute if data storage jad:temp_data {channel_check:{channel:0}} run return 1
return run function jak_and_daxter:eco_system/eco_vent_check_macro with storage jad:temp_data channel_check