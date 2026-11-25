# Distance infinie active (en tant que le Surfer) : les projectiles s'arretent net, les monstres n'avancent plus, -40 % de degats
scoreboard players remove @s stlboy.inf 1
effect give @s minecraft:resistance 1 1 true
tag @s add stlboy_inf_self
execute as @e[type=#stlboy:void_projectiles,distance=..3.5] unless function stlboy:skills/infinity_mine run function stlboy:skills/infinity_hold
tag @s remove stlboy_inf_self
execute as @e[type=#stlboy:glare,distance=..2.6,type=!#c:bosses] run effect give @s minecraft:slowness 1 6 true
execute if score @s stlboy.inf matches 1.. if predicate stlboy:chance_quarter run particle apoli:custom{texture:"stlboy:textures/particle/nep_warp.png",lifetime:16,lifetime_variation:3,size:0.5f,size_variation:0.1f,end_size:0.2f,color:"#9FC8FFCC",end_color:"#6FB4FF00",friction:0.96f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 4)"} ~ ~1 ~ 1.2 0.8 1.2 0 2 force
execute if score @s stlboy.inf matches 0 run function stlboy:skills/infinity_end
