#/execute in minecraft:overworld run tp @s 75.85 54.74 337.38 -192.96 5.40
#/execute in minecraft:overworld run tp @s 53.89 56.99 314.49 -195.96 -1.05
#/execute in minecraft:overworld run tp @s 26.82 59.98 299.65 -184.56 20.25
scoreboard players add menuCamera jad.timer 1
execute if score menuCamera jad.timer matches 5.. run scoreboard players set menuCamera jad.timer 0
execute if score menuCamera jad.timer matches 0 run function jak_and_daxter:cinamatic/menu/loop/1

execute if score menuCamera jad.timer matches 1 run function jak_and_daxter:cinamatic/point {"x":26.82,"y":59.98,"z":299.65,"yaw":"-184.56","pitch":"20.25","time":1,"next":"jak_and_daxter:cinamatic/menu/start"}
execute if score menuCamera jad.timer matches 2 run function jak_and_daxter:cinamatic/point {"x":75.85,"y":54.74,"z":337.38,"yaw":"-192.96","pitch":"5.40","time":100,"next":"jak_and_daxter:cinamatic/menu/start"}
execute if score menuCamera jad.timer matches 3 run function jak_and_daxter:cinamatic/point {"x":53.89,"y":56.99,"z":314.49,"yaw":"-195.96","pitch":"-1.05","time":100,"next":"jak_and_daxter:cinamatic/menu/start"}
execute if score menuCamera jad.timer matches 4 run function jak_and_daxter:cinamatic/point {"x":26.82,"y":59.98,"z":299.65,"yaw":"-184.56","pitch":"20.25","time":100,"next":"jak_and_daxter:cinamatic/menu/start"}