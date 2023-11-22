## from: pom/functions/tick
## execute as @e[type=interaction,tag=pom_intera,nbt={attack:{}}] at @s
##            左クリックされた記録のあるインタラ
## 鉢破壊、素材ドロップ、インタラ削除
#  鉢を空気に置換しアイテムドロップ
setblock ~ ~ ~ air destroy
particle explosion ~ ~ ~ 0 0 0 1 1 force @a
playsound block.beacon.deactivate block @a ~ ~ ~ 0.8 1.2
#  pom作成に使った素材も同座標にドロップ
loot spawn ~ ~ ~ loot pom:extra_ingredients
#  インタラを削除
kill @s