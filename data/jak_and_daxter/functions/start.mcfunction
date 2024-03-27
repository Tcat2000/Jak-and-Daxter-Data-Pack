data merge storage macro {args:{}}
data merge storage jad:game_data {SelectedGame:0,DataPackID:746568,BaseGameData:{Orbs:[],PowerCells:[],ScoutFlies:[]},SavedGames:[{Id:0,Data:{}},{Id:1,Data:{}},{Id:2,Data:{}},{Id:3,Data:{}}]}
scoreboard objectives add jad-value_compare dummy
scoreboard objectives add jad-right_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add jad-math_handling dummy
scoreboard objectives add jad.eco_value dummy
scoreboard objectives add jad.eco_color dummy
scoreboard objectives add uuid1 dummy
scoreboard objectives add uuid2 dummy
scoreboard objectives add uuid3 dummy
scoreboard objectives add uuid4 dummy
execute unless entity @e[type=minecraft:marker,tag=math-sin] run summon minecraft:marker ~ ~ ~ {Tags:["math-sin"]}

# execute as @e[type=minecraft:armor_stand] run data modify entity @s Passengers prepend from entity @e[type=minecraft:marker,limit=1,sort=nearest] data.Passenger
# execute as @e[type=minecraft:armor_stand] run data modify entity @e[type=minecraft:marker,limit=1,sort=nearest] data.Passenger set from entity @s Passengers[{id:"minecraft:item"}]

function jak_and_daxter:init_nums