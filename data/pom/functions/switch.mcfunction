## from: pom/functions/tick
## execute as @e[tag=pom_intera,nbt={interaction:{}}]
##            右クリされた記録のあるインタラ
## 右クリした際にブレイズロッドを手に持っていればparticleをON/OFFして終了
execute if entity @s[tag=pom_par_off,nbt={interaction:{}}] on target if entity @s[predicate=pom:have_blazerod] run function pom:particle/off
execute if entity @s[tag=!pom_par_off,nbt={interaction:{}}] on target if entity @s[predicate=pom:have_blazerod] run function pom:particle/on
execute if entity @s[nbt=!{interaction:{}}] run return 0

## 右クリの度にpom_rangeを1~6で切り替え
#  pom_rangeを1増やし効果範囲を拡大
scoreboard players add @s pom_range 1
#  天気の種類によってパーティクルと効果音
execute if entity @s[tag=pom_clear,scores={pom_range=..6}] run particle lava ~ ~0.5 ~ 0 0.1 0 1 5 force @a
execute if entity @s[tag=pom_clear,scores={pom_range=..6}] run playsound entity.blaze.shoot block @a ~ ~ ~ 0.5
execute if entity @s[tag=pom_rain,scores={pom_range=..6}] run playsound ambient.underwater.enter block @a ~ ~ ~ 1 1.5
execute if entity @s[tag=pom_rain,scores={pom_range=..6}] run particle rain ~ ~0.5 ~ 0.3 0.3 0.3 0 20 force @a
execute if entity @s[tag=pom_thunder,scores={pom_range=..6}] run particle instant_effect ~ ~0.5 ~ 0.2 0.2 0.2 0.15 10 force @a
execute if entity @s[tag=pom_thunder,scores={pom_range=..6}] run particle flash ~ ~0.5 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=pom_thunder,scores={pom_range=..6}] run playsound item.trident.return block @a ~ ~ ~ 1.5

#  pom_range=6からさらに右クリで1に戻る
execute if score @s pom_range matches 7.. run scoreboard players set @s pom_range 1
execute if entity @s[tag=pom_clear,scores={pom_range=1}] run particle large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.05 10 force @a
execute if entity @s[tag=pom_clear,scores={pom_range=1}] run playsound block.fire.extinguish block @a ~ ~ ~ 0.5
execute if entity @s[tag=pom_rain,scores={pom_range=1}] run particle cloud ~ ~0.75 ~ 0.3 0.3 0.3 0 10 force @a
execute if entity @s[tag=pom_rain,scores={pom_range=1}] run playsound ambient.underwater.exit block @a ~ ~ ~ 1 1.5
execute if entity @s[tag=pom_thunder,scores={pom_range=1}] run particle dust_color_transition 0.5 0.5 0.5 1 0.5 0.5 0.5 ~ ~1 ~ 0.2 0.5 0.2 0 20 force @a
execute if entity @s[tag=pom_thunder,scores={pom_range=..6}] run particle flash ~ ~0.5 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=pom_thunder,scores={pom_range=1}] run playsound entity.lightning_bolt.impact block @a ~ ~ ~ 0.5
#  最後に右クリ記録を消去
data remove entity @s interaction