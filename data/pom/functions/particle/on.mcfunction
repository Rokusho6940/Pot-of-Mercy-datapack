## from: pom/functions/switch
## execute on target @s[predicate=pom:have_blazerod]
##                   インタラクションを右クリしたブレイズロッド持ってるプレイヤー
## par_offタグを付けた後に操作記録を削除
tag @e[tag=pom_intera,nbt={interaction:{}},sort=nearest,limit=1] add pom_par_off
playsound block.amethyst_block.place block @a ~ ~ ~ 1
data remove entity @e[tag=pom_intera,nbt={interaction:{}},sort=nearest,limit=1] interaction
