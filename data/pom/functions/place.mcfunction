## from: pom/functions/tick
## execute as @e[tag=pom_frame] at @s run function
##            設置されたpom_frame
## 設置
#  設置場所が空気ブロックでなければ設置中止
execute unless block ~ ~ ~ #pom:air run kill @s
execute unless block ~ ~ ~ #pom:air run loot spawn ~ ~ ~ loot pom:pot_of_mercy
execute unless block ~ ~ ~ #pom:air run return 0
#  額縁の座標にマーカー設置
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["pom_marker"]}
#  同座標に植木鉢設置
setblock ~ ~ ~ flower_pot destroy
particle explosion ~ ~ ~ 0 0 0 1 1 force @a
playsound block.lodestone.place block @a ~ ~ ~ 1
playsound block.beacon.activate block @a ~ ~ ~ 0.8 1.2
#  額縁お役御免
kill @s