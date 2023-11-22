## from: pom/functions/tick
## execute as @e[tag=pom_marker] at @s
##            同座標に鉢がなくなったマーカー
## 素材をドロップさせ、マーカー撤去
particle explosion ~ ~ ~ 0 0 0 1 1 force @a
playsound block.beacon.deactivate block @a ~ ~ ~ 0.8 1.2
loot spawn ~ ~ ~ loot pom:extra_ingredients
kill @s