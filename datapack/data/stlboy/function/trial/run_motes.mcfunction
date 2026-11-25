execute as @e[type=minecraft:item,tag=stlboy_tr_mote] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.2 ~ 0.1 0.1 0.1 0.01 1 force
# poussieres ramassees = celles dans l'inventaire (les poussieres au sol dans des chunks decharges ne comptent plus a tort)
execute store result score #g stlboy.tmp run clear @s minecraft:structure_void[minecraft:custom_data~{stlboy_mote:1b}] 0
execute store result bossbar stlboy:trial value run scoreboard players get #g stlboy.tmp
execute store result storage stlboy:tr n int 1 run scoreboard players get #g stlboy.tmp
function stlboy:trial/motes_name with storage stlboy:tr
execute if score #g stlboy.tmp matches 22.. run return run function stlboy:trial/win_motes
execute if score @s stlboy.trt matches 1000.. run function stlboy:trial/fail
