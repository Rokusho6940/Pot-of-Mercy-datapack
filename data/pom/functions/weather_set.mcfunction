## from: pom/functions/tick
## execute as @e[tag=pom_activate]
##            全ての有効な鉢
## 各々の天気に固定する
execute if entity @s[tag=pom_activate,tag=pom_clear] if predicate pom:not_clear run weather clear
execute if entity @s[tag=pom_activate,tag=pom_rain] unless predicate pom:raining run weather rain
execute if entity @s[tag=pom_activate,tag=pom_thunder] if predicate pom:not_thunder run weather thunder