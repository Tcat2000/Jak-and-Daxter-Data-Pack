particle minecraft:dust 1 0 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 1 10 force
$execute positioned ^ ^ ^-$(mag) run particle minecraft:dust 0.3 0.3 0.3 1 ~ ~0.5 ~ 0.2 0.2 0.2 1 5 force
$execute positioned ^ ^ ^-$(mag) run particle minecraft:flame ~ ~0.5 ~ $(dirX) $(dirY) $(dirZ) 0.055 0
$execute positioned ^ ^ ^$(mag) run particle minecraft:dust 0.3 0.3 0.3 1 ~ ~0.5 ~ 0.2 0.2 0.2 1 5 force
$execute positioned ^ ^ ^$(mag) run particle minecraft:flame ~ ~0.5 ~ $(ndirX) $(ndirY) $(ndirZ) 0.055 0