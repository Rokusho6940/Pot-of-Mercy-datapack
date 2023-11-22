## from: pom/functions/tick
## execute as @e[pom_marker] at @s
## 鉢が空じゃないマーカーがあった時に起動
#  植えたものに応じてインタラクション設置
#  晴れ
execute if block ~ ~ ~ #pom:clear_pots align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {width:0.4f,height:1,Tags:["pom_intera","pom_clear"]}
execute if entity @e[distance=0,tag=pom_clear] run playsound entity.blaze.shoot block @a ~ ~ ~ 0.5
execute if entity @e[distance=0,tag=pom_clear] run playsound entity.blaze.burn block @a ~ ~ ~
execute if entity @e[distance=0,tag=pom_clear] run particle flame ~ ~0.5 ~ 1.2 1.2 1.2 0 30 force @a
execute if entity @e[distance=0,tag=pom_clear] run particle large_smoke ~ ~0.75 ~ 0.2 0.2 0.2 0.01 10 force @a
#  雷雨
execute if block ~ ~ ~ #pom:thunder_pots align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {width:0.4f,height:1,Tags:["pom_intera","pom_thunder"]}
execute if entity @e[distance=0,tag=pom_thunder] run playsound item.trident.thunder block @a ~ ~ ~ 0.75
execute if entity @e[distance=0,tag=pom_thunder] run playsound entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5
execute if entity @e[distance=0,tag=pom_thunder] run particle flash ~ ~0.5 ~ 0 0 0 0 1 force @a
execute if entity @e[distance=0,tag=pom_thunder] run particle witch ~ ~0.5 ~ 0.2 0.2 0.2 1 10 force @a
execute if entity @e[distance=0,tag=pom_thunder] run particle electric_spark ~ ~0.5 ~ 1.2 1.2 1.2 0 30 force @a
#  雨(カラでも晴れでも雷雨でもない)
execute if block ~ ~ ~ #flower_pots unless block ~ ~ ~ flower_pot unless block ~ ~ ~ #pom:clear_pots unless block ~ ~ ~ #pom:thunder_pots align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {width:0.4f,height:1,Tags:["pom_intera","pom_rain"]}
execute if entity @e[distance=0,tag=pom_rain] run playsound ambient.underwater.enter block @a ~ ~ ~ 1 1.5
execute if entity @e[distance=0,tag=pom_rain] run playsound block.water.ambient block @a ~ ~ ~ 1 1.5
execute if entity @e[distance=0,tag=pom_rain] run particle rain ~ ~0.5 ~ 0.3 0.3 0.3 0 30 force @a
execute if entity @e[distance=0,tag=pom_rain] run particle dust_color_transition 0.7 0.8 1 1 1 1 1 ~ ~1 ~ 0.4 0.4 0.4 1 10 force @a
execute if entity @e[distance=0,tag=pom_rain] run particle dripping_dripstone_water ~ ~0.5 ~ 1 1 1 1 20 force @a

#　インタラに効果範囲を初期設定
execute if entity @e[tag=pom_intera,distance=0] run scoreboard players set @e[tag=pom_intera,distance=0] pom_range 1

#  マーカーお役御免
execute if entity @e[tag=pom_intera,distance=0] run kill @s
