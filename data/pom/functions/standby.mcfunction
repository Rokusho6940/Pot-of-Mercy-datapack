## from: pom/functions/tick
## execute as @e[tag=pom_intera] run function
##            設置された全てのpom_intera
## 鉢が起動中、プレイヤーから見て効果距離以内にあればstandby
## それぞれの鉢に最も近いそれぞれのプレイヤーから効果距離以上離れていればstandby及びactivate剥奪
## score:1~6 ... 範囲半径:8,16,32,64,128,256 ブロック

#execute as @e[tag=pom_intera,scores={pom_range=1},distance=..8] run tag @s add pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=1},distance=8..] run tag @s remove pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=1},distance=8..] run tag @s remove pom_activate
#execute as @e[tag=pom_intera,scores={pom_range=2},distance=..16] run tag @s add pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=2},distance=16..] run tag @s remove pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=2},distance=16..] run tag @s remove pom_activate
#execute as @e[tag=pom_intera,scores={pom_range=3},distance=..32] run tag @s add pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=3},distance=32..] run tag @s remove pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=3},distance=32..] run tag @s remove pom_activate
#execute as @e[tag=pom_intera,scores={pom_range=4},distance=..64] run tag @s add pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=4},distance=64..] run tag @s remove pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=4},distance=64..] run tag @s remove pom_activate
#execute as @e[tag=pom_intera,scores={pom_range=5},distance=..128] run tag @s add pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=5},distance=128..] run tag @s remove pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=5},distance=128..] run tag @s remove pom_activate
#execute as @e[tag=pom_intera,scores={pom_range=6},distance=..256] run tag @s add pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=6},distance=256..] run tag @s remove pom_standby
#execute as @e[tag=pom_intera,scores={pom_range=6},distance=256..] run tag @s remove pom_activate


execute as @e[tag=pom_intera,scores={pom_range=1}] at @s if entity @p[distance=..8] run tag @s add pom_standby
execute as @e[tag=pom_intera,scores={pom_range=1}] at @s unless entity @p[distance=..8] run tag @s remove pom_standby
execute as @e[tag=pom_intera,scores={pom_range=1}] at @s unless entity @p[distance=..8] run tag @s remove pom_activate
execute as @e[tag=pom_intera,scores={pom_range=2}] at @s if entity @p[distance=..16] run tag @s add pom_standby
execute as @e[tag=pom_intera,scores={pom_range=2}] at @s unless entity @p[distance=..16] run tag @s remove pom_standby
execute as @e[tag=pom_intera,scores={pom_range=2}] at @s unless entity @p[distance=..16] run tag @s remove pom_activate
execute as @e[tag=pom_intera,scores={pom_range=3}] at @s if entity @p[distance=..32] run tag @s add pom_standby
execute as @e[tag=pom_intera,scores={pom_range=3}] at @s unless entity @p[distance=..32] run tag @s remove pom_standby
execute as @e[tag=pom_intera,scores={pom_range=3}] at @s unless entity @p[distance=..32] run tag @s remove pom_activate
execute as @e[tag=pom_intera,scores={pom_range=4}] at @s if entity @p[distance=..64] run tag @s add pom_standby
execute as @e[tag=pom_intera,scores={pom_range=4}] at @s unless entity @p[distance=..64] run tag @s remove pom_standby
execute as @e[tag=pom_intera,scores={pom_range=4}] at @s unless entity @p[distance=..64] run tag @s remove pom_activate
execute as @e[tag=pom_intera,scores={pom_range=5}] at @s if entity @p[distance=..128] run tag @s add pom_standby
execute as @e[tag=pom_intera,scores={pom_range=5}] at @s unless entity @p[distance=..128] run tag @s remove pom_standby
execute as @e[tag=pom_intera,scores={pom_range=5}] at @s unless entity @p[distance=..128] run tag @s remove pom_activate
execute as @e[tag=pom_intera,scores={pom_range=6}] at @s if entity @p[distance=..256] run tag @s add pom_standby
execute as @e[tag=pom_intera,scores={pom_range=6}] at @s unless entity @p[distance=..256] run tag @s remove pom_standby
execute as @e[tag=pom_intera,scores={pom_range=6}] at @s unless entity @p[distance=..256] run tag @s add pom_activate