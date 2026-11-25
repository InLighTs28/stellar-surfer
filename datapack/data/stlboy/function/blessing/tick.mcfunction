# Tick global (tag minecraft:tick) : Star Blessing. Verifie toutes les 10 ticks, pour tous les joueurs.
execute store result score #bgt stlboy.tmp run time query gametime
scoreboard players set #c10 stlboy.tmp 10
scoreboard players operation #bgt stlboy.tmp %= #c10 stlboy.tmp
execute if score #bgt stlboy.tmp matches 0 as @a run function stlboy:blessing/check
execute if score #bgt stlboy.tmp matches 5 as @a[tag=stlboy_blessed] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~2.1 ~ 0.25 0.1 0.25 0.01 2
# Sanctuaires d'epreuve
execute as @e[type=minecraft:interaction,tag=stlboy_shrine] at @s if data entity @s interaction run function stlboy:shrine/use
execute if score #bgt stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_shrine] at @s run function stlboy:shrine/fx
# entites d'epreuve sans epreuve en cours (mort, chunk recharge plus tard) : nettoyees
execute if score #bgt stlboy.tmp matches 0 as @e[tag=stlboy_tr_owned] run function stlboy:trial/orphan
