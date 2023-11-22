## from: pom/functions/tick
## execute as @e[tag=pom_standby,sort=nearest,limit=1] (at @p)
##            プレイヤーに最も近くactivateしてないstandby鉢一つ
## 先にactivateしていた鉢を無効にし最も近いstandbyをactivateする **マルチ環境にて想定内の不具合アリ**
#particle crit 10001 -57 10000 0.2 0.2 0.2 1 10 force @a
#playsound block.amethyst_block.break master @a 10001 -57 10000 1 1 1
tag @e[tag=pom_activate,sort=nearest,limit=1] remove pom_activate
tag @s add pom_activate