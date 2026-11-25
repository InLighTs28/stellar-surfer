# Coup cosmique unique (macro cd ; en tant que la cible) : les porteurs de l'anneau sont epargnes
# Saturation : les degats cosmiques ignorent l'invulnerabilite, donc un 2e coup cosmique dans les 4 ticks
# (laser + eclats + orbes, ou plusieurs Surfers sur la meme cible) ne fait que 35 % de ses degats.
# (#cfree = 1 avant l'appel : coup "recompense" comme la Constellation, jamais reduit)
scoreboard players operation #cf stlboy.tmp = #cfree stlboy.tmp
scoreboard players set #cfree stlboy.tmp 0
execute if entity @s[predicate=stlboy:ally] run return 0
# PNJ, golems, animaux et familiers apprivoises : jamais touches par le cosmos
execute if entity @s[type=#stlboy:friendly] run return 0
execute unless entity @s[type=minecraft:player] unless entity @s[type=#stlboy:shard_prey] if data entity @s Owner run return 0
$data modify storage stlboy:tmp ch.cd set value $(cd)
execute store result score #cnow stlboy.tmp run time query gametime
scoreboard players operation #cdt stlboy.tmp = #cnow stlboy.tmp
scoreboard players operation #cdt stlboy.tmp -= @s stlboy.clast
execute unless score #cf stlboy.tmp matches 1 if score #cdt stlboy.tmp matches 0..3 store result storage stlboy:tmp ch.cd double 0.0035 run data get storage stlboy:tmp ch.cd 100
execute unless score #cf stlboy.tmp matches 1 if score #cdt stlboy.tmp matches 0..3 run particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:20,lifetime_variation:5,size:0.2f,size_variation:0.06f,end_size:0.0f,color:"#4A3A70AA",end_color:"#1A102A00",friction:0.92f,gravity:-0.003f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.2 0.3 0.2 0.01 2
scoreboard players operation @s stlboy.clast = #cnow stlboy.tmp
# Force cosmique (souffle du dragon) : degats cosmiques +30 %
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_cstr,limit=1] store result storage stlboy:tmp ch.cd double 0.013 run data get storage stlboy:tmp ch.cd 100
# Difficulte du modpack : degats cosmiques +10 % par palier
execute if score #pt stlboy.pack matches 1 store result storage stlboy:tmp ch.cd double 0.011 run data get storage stlboy:tmp ch.cd 100
execute if score #pt stlboy.pack matches 2 store result storage stlboy:tmp ch.cd double 0.012 run data get storage stlboy:tmp ch.cd 100
execute if score #pt stlboy.pack matches 3.. store result storage stlboy:tmp ch.cd double 0.013 run data get storage stlboy:tmp ch.cd 100
function stlboy:cosmic/hit_do with storage stlboy:tmp ch
