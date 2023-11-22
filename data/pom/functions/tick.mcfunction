## 設置(単発)
execute as @e[tag=pom_frame] at @s run function pom:place

## 鉢に何か植えて起動(単発)
execute as @e[tag=pom_marker] at @s if block ~ ~ ~ #flower_pots unless block ~ ~ ~ flower_pot run function pom:set

## 起動中(継続)               →at それぞれの鉢に最も近いそれぞれのプレイヤー の意
execute as @e[tag=pom_intera] at @s at @p run function pom:standby

## 起動中にインタラに右クリ(単発)
execute as @e[tag=pom_intera,nbt={interaction:{}}] at @s run function pom:switch

## マーカーのparticle(継続)
execute as @e[tag=pom_marker] at @s run function pom:particle/particle_marker
## インタラクションのparticle(継続)
execute as @e[tag=pom_intera,limit=1] run function pom:particle/
## プレイヤーが最も近いstandbyだけをactivate(単発)
execute at @p as @e[tag=pom_standby,sort=nearest,limit=1] unless entity @s[tag=pom_activate] run function pom:activate

## 有効な鉢が天候を固定する(継続)
execute as @e[tag=pom_activate] run function pom:weather_set

## インタラクションが左クリックされる場合(単発)
execute as @e[tag=pom_intera,nbt={attack:{}}] at @s run function pom:break_left_intera

## 鉢破壊で撤去(単発)
#  空の鉢(マーカー)に左クリックor空の鉢が破壊される場合
execute as @e[tag=pom_marker] at @s unless block ~ ~ ~ #flower_pots run function pom:break_marker
#  インタラクションの座標のブロックが植木鉢でなくなる場合
execute as @e[tag=pom_intera] at @s unless block ~ ~ ~ #flower_pots run function pom:break_intera