## from: pom/advancements/craft rewards
## pomをクラフトしたプレイヤーにpomを与える

advancement revoke @s only pom:craft
#  pomのガワを着せた額縁をプレイヤーの座標にドロップする
execute at @s run loot spawn ~ ~ ~ loot pom:pot_of_mercy
#  ドロップしたアイテムをすぐ拾わせる
data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0
clear @s lily_of_the_valley 1