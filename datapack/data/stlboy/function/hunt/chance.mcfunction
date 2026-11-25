# Chance qu'un coup declenche la Traque (en tant que le Surfer) : 100 % au Rang 0, -8,5 % par Rang, 15 % au Rang 10 (jamais 0)
execute store result score @s stlboy.hch run resource get @s stlboy:stardust_rank
scoreboard players set #c85 stlboy.tmp 85
scoreboard players operation @s stlboy.hch *= #c85 stlboy.tmp
scoreboard players set #c10 stlboy.tmp 10
scoreboard players operation @s stlboy.hch /= #c10 stlboy.tmp
scoreboard players set #c100 stlboy.tmp 100
scoreboard players operation #c100 stlboy.tmp -= @s stlboy.hch
scoreboard players operation @s stlboy.hch = #c100 stlboy.tmp
execute if score @s stlboy.hch matches ..14 run scoreboard players set @s stlboy.hch 15
