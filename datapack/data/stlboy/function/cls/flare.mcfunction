# Eruption solaire (macro t = secondes ; en tant que la cible, #own = Surfer proprietaire)
# 3 s par defaut (4 s avec la competence avancee), reduite par Protection contre le feu et la resistance au feu magique.
# Garde la plus longue duree, retient qui l'a allumee ; une nappe de flammes solaires couvre la cible comme le feu vanilla.
$scoreboard players set #fl stlboy.tmp $(t)
execute if score #fl stlboy.tmp matches ..2 run scoreboard players set #fl stlboy.tmp 3
scoreboard players operation #fl stlboy.tmp *= #20 stlboy.const
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sun_heart,limit=1] run scoreboard players add #fl stlboy.tmp 20
function stlboy:cls/flare_resist
execute unless score @s stlboy.sfl >= #fl stlboy.tmp run scoreboard players operation @s stlboy.sfl = #fl stlboy.tmp
scoreboard players operation @s stlboy.sfo = #own stlboy.tmp
execute unless entity @s[tag=stlboy_flm] run function stlboy:cls/flare_measure
execute unless entity @s[tag=stlboy_flare] run function stlboy:cls/flare_show
tag @s add stlboy_flare
