# Un essai de moins au sanctuaire de cette epreuve : 3 essais, puis il s'effondre (le souvenir attendra un autre sanctuaire)
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
scoreboard players set #ta stlboy.tmp 0
execute as @e[type=minecraft:interaction,tag=stlboy_shr_active,predicate=stlboy:owned,limit=1] run scoreboard players add @s stlboy.tra 1
execute as @e[type=minecraft:interaction,tag=stlboy_shr_active,predicate=stlboy:owned,limit=1] store result score #ta stlboy.tmp run scoreboard players get @s stlboy.tra
scoreboard players set #tl stlboy.tmp 3
scoreboard players operation #tl stlboy.tmp -= #ta stlboy.tmp
execute if score #ta stlboy.tmp matches 1.. if score #tl stlboy.tmp matches 1.. run tellraw @s [{"text":"✦ ","color":"dark_purple"},{"translate":"stlboy.trial.left","fallback":"%s attempt(s) left at this shrine.","color":"gray","with":[{"score":{"name":"#tl","objective":"stlboy.tmp"},"color":"white"}]}]
execute if score #tl stlboy.tmp matches ..0 run tellraw @s [{"text":"✦ ","color":"dark_purple"},{"translate":"stlboy.trial.crumble","fallback":"The shrine crumbles. This memory will wait for another shrine.","color":"gray"}]
execute if score #tl stlboy.tmp matches ..0 at @e[type=minecraft:interaction,tag=stlboy_shr_active,predicate=stlboy:owned,limit=1] run function stlboy:shrine/ruin
tag @e[type=minecraft:interaction,tag=stlboy_shr_active,predicate=stlboy:owned] remove stlboy_shr_active
