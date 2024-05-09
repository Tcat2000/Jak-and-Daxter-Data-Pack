# 10 seconds
function jak_and_daxter:npc/start_cutscene {"pos":"116 31 171 125 36"}
scoreboard players set dialogue jad.timer 200
scoreboard players remove collected jad.orbs_collected 90
tellraw @a "[Uncle] I see you two are back to make the trade. Good, good, jolly good! Eh, you have the uh, Precursor orbs that we agreed on? I hope you put this hard-earned power cell to good use. Cheerio, ta ta, bye bye!"